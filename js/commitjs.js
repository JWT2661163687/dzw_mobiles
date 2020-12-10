var mainappvue = new Vue({
	el: "#maintainapp",
	data: {
		trees: []
	},
	mounted: function() {
		//获得树
		this.loadtree();
		//加载首页
		this.menuclick("首页","首页",'shiuye001');
	},
	methods: {
		loadtree() {
			axios.get(`http://127.0.0.1:8080/dzw_moblie/api/loginjurisdictions/loginjurisdiction/getFunTree`).then(function(res) {
				mainappvue.trees = res.data;
			})
		},
		handleOpen(key, keyPath) {
			console.log(key, keyPath);
		},
		handleClose(key, keyPath) {
			console.log(key, keyPath);
		},
		//单击添加切换选项卡
		menuclick(title, name, yemian) {
			//alert(title)
			//循环判断是否有此选项卡，有切换没有添加
			for(var i = 0; i < vueapp.editableTabs.length; i++) {
				if(title == vueapp.editableTabs[i].title) {
					vueapp.editableTabsValue = vueapp.editableTabs[i].name;
					return;
				}
			}

			//新增选项卡
			vueapp.editableTabs.push({
				title: title,
				name: name,
				content: yemian
			});
			//选中单前新增选项卡
			vueapp.editableTabsValue = name;
			//dom更新后加载页面
			vueapp.$nextTick(() => {
				$(`#${title}${name}`).load(menuMapping[yemian])
			});
		},
	}

});