#### Description
仪表板交互示例代码:
该项目主体是两个页面承载，分别是主页面HomePage，主页面包含一个左侧边栏菜单页面，在左侧菜单页面选择不同的也表盘列表切换
主页面仪表盘的显示，切换的事件和状态数据管理通知是通过BloC的方式，侧边栏header的FlutterLogo使用了AnimatorController
实现的自定义缩放动画，做了一个缩放效果。

Flutter代码在lib文件夹下：
Flutter SDK 版本：Flutter 3.16.5
1. BloC的模式是基于flutter_bloc库实现
2. 仪表盘基于fl_chart库实现

#### Software Architecture
Software architecture description

#### Installation

（推荐Android）
使用Android手机通过ADB连接Android Studio，点击toolbar的 Run ‘main.dart’，就可以编译运行程序安装到手机上

iOS：
电脑上需要安装XCode以及CocoaPods环境，相比安装到Android设备会更麻烦一点，也可以使用iOS手机模拟器，编译运行的步骤同Android

#### Instructions
项目采用BloC的架构方式构建，用户的输入事件和响应输出的状态由具体的BloC管理，UI界面在上级节点注册BloC并监听BloC的状态更新
来通知相应页面小部件更新，以此做到事件和状态逻辑处理与UI界面隔离。

#### 面临的问题
仪表盘是主要的UI呈现，缺乏业务数据做交互，目前UI的可玩性看起来感觉比较单薄，解决方式：是添加模拟的交互数据，让UI更生动。
该项目目前已经具备Bloc的核心框架。
