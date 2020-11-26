	 new Vue({
			el: "#maintainapp",
			data: {
				
			},

			methods: {
					handleOpen(key, keyPath) {
					console.log(key, keyPath);
				},
				handleClose(key, keyPath) {
					console.log(key, keyPath);
				},
				//单击添加切换选项卡
				menuclick(title, name, yemian) {
					
					//循环判断是否有此选项卡，有切换没有添加
					for(var i=0;i<vueapp.editableTabs.length;i++){
						if(title==vueapp.editableTabs[i].title){
							vueapp.editableTabsValue =vueapp.editableTabs[i].name;
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
						$(`#${title}${name}`).load(yemian)
					});
				},
			}

		});