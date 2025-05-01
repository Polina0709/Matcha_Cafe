document.addEventListener('DOMContentLoaded', function() {
    const navButtons = document.querySelectorAll('.nav-btn');
    const scrollButtons = document.querySelectorAll('.scroll-btn');
    const sections = document.querySelectorAll('main section');

    navButtons.forEach(button => {
        button.addEventListener('click', function() {
            const targetId = this.getAttribute('data-target');
            document.getElementById(targetId).scrollIntoView({ behavior: 'smooth' });
        });
    });

    scrollButtons.forEach(button => {
        button.addEventListener('click', function() {
            const targetId = this.getAttribute('data-target');
            document.getElementById(targetId).scrollIntoView({ behavior: 'smooth' });
        });
    });

    window.addEventListener('scroll', () => {
        let currentSectionId = '';

        sections.forEach(section => {
            const sectionTop = section.offsetTop;
            const sectionHeight = section.offsetHeight;

            if (pageYOffset >= sectionTop - sectionHeight / 3) {
                currentSectionId = section.getAttribute('id');
            }
        });

        navButtons.forEach(button => {
            if (button.getAttribute('data-target') === currentSectionId) {
                button.classList.add('active');
            } else {
                button.classList.remove('active');
            }
        });
    });
});

const sceneConfigs = [
    { id: 'scene1', model: 'models/matcha_cafe.glb', cameraPos: [17, 17, 17], transparent: true},
    { id: 'scene2', model: 'models/matcha.glb', cameraPos: [10, 6, 0], transparent: true },
    { id: 'scene3', model: 'models/matcha_bag.glb', cameraPos: [5, 3, 4] },
    { id: 'scene4', model: 'models/matcha_book.glb', cameraPos: [4, 5, 4] }
];

sceneConfigs.forEach(config => {
    const container = document.getElementById(config.id);
    const scene = new THREE.Scene();
    const camera = new THREE.PerspectiveCamera(45, container.clientWidth / container.clientHeight, 0.1, 1000);
    camera.position.set(...config.cameraPos);

    const renderer = new THREE.WebGLRenderer({ alpha: true, antialias: true });
    renderer.setSize(container.clientWidth, container.clientHeight);
    renderer.setClearColor(0x000000, 0);
    container.appendChild(renderer.domElement);

    const ambientLight = new THREE.AmbientLight(0xffffff, 0.85);
    const dirLight = new THREE.DirectionalLight(0xffffff, 0.3);
    dirLight.position.set(5, 10, 7.5);
    const pointLight = new THREE.PointLight(0xffffff, 0.1);
    pointLight.position.set(0, 2, 2);
    scene.add(ambientLight, dirLight, pointLight);

    const controls = new THREE.OrbitControls(camera, renderer.domElement);
    controls.enableDamping = true;
    controls.dampingFactor = 0.05;
    controls.enablePan = false;
    controls.minDistance = 1;
    controls.maxDistance = 50;

    const loader = new THREE.GLTFLoader();
    let model = null;

    loader.load(config.model, gltf => {
        model = gltf.scene;

        model.traverse(node => {
            if (node.isMesh && node.material) {
                const mat = node.material;

                if (mat.opacity < 1 || mat.alphaMap || mat.transparent) {
                    mat.transparent = true;
                    mat.depthWrite = false;
                    mat.side = THREE.DoubleSide;
                    mat.alphaTest = 0.01;

                    if (!mat.color || mat.color.equals(new THREE.Color(0, 0, 0))) {
                        mat.color = new THREE.Color(0xffffff);
                    }
                    mat.emissive = new THREE.Color(0x222222);
                }
            }
        });

        scene.add(model);
        animate();
    });

    function animate() {
        requestAnimationFrame(animate);
        if (model) {
            model.rotation.y += 0.005;
        }
        controls.update();
        renderer.render(scene, camera);
    }
});