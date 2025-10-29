# 🤝 贡献指南

感谢您对 wechat-selkies 项目的关注和贡献意愿！本指南将帮助您了解如何有效地参与项目贡献。

## 🎯 贡献方式

### 1. 🐛 报告Bug
如果您发现了Bug，请：
1. 搜索 [现有Issues](https://github.com/nickrunning/wechat-selkies/issues) 确认没有重复
2. 使用 [Bug报告模板](https://github.com/nickrunning/wechat-selkies/issues/new?template=bug_report.yml) 提交详细报告
3. 提供完整的环境信息和重现步骤

### 2. 💡 提出功能建议
对于新功能或改进建议：
1. 先在 [讨论区](https://github.com/nickrunning/wechat-selkies/discussions) 讨论想法
2. 如果获得积极反馈，使用 [功能请求模板](https://github.com/nickrunning/wechat-selkies/issues/new?template=feature_request.yml)
3. 详细描述功能需求和使用场景

### 3. 💬 参与讨论
使用 [讨论区](https://github.com/nickrunning/wechat-selkies/discussions) 进行：
- 技术问答和故障排除
- 经验分享和最佳实践
- 项目改进建议和想法
- 社区交流和合作

详细使用指南请参考：[讨论区指南](./discussions-guide.md)

### 4. 📝 改进文档
文档贡献包括：
- 修正错误或过时信息
- 添加使用示例和教程
- 改进说明的清晰度
- 翻译文档到其他语言

### 5. 💻 代码贡献
参与代码开发：
- 修复已知Bug
- 实现新功能
- 优化性能
- 改进代码质量

## 🔄 贡献流程

### 准备工作
1. **Fork项目** 到您的GitHub账户
2. **克隆项目** 到本地开发环境
3. **设置开发环境** 按照README说明

### 开发流程
1. **创建分支** 为您的贡献创建特性分支
   ```bash
   git checkout -b feature/your-feature-name
   # 或
   git checkout -b bugfix/issue-number
   ```

2. **进行开发** 
   - 遵循项目编码规范
   - 添加必要的注释
   - 确保代码质量

3. **测试验证**
   - 进行功能测试
   - 验证兼容性
   - 确保不破坏现有功能

4. **提交代码**
   ```bash
   git add .
   git commit -m "类型: 简洁的提交说明"
   git push origin your-branch-name
   ```

5. **创建Pull Request**
   - 使用 [PR模板](https://github.com/nickrunning/wechat-selkies/blob/master/.github/pull_request_template.md)
   - 详细描述变更内容
   - 关联相关Issues

### 提交消息规范
使用清晰的提交消息格式：
```
类型: 简洁的描述 (不超过50字符)

详细说明 (如果需要):
- 解释为什么做这个改变
- 描述主要变更
- 提及任何破坏性变更
```

**提交类型：**
- `feat:` 新功能
- `fix:` Bug修复
- `docs:` 文档更新
- `style:` 代码格式调整
- `refactor:` 代码重构
- `perf:` 性能优化
- `test:` 测试相关
- `chore:` 构建/配置相关

## 📏 质量标准

### 代码质量
- **可读性** - 代码清晰易懂，有适当注释
- **一致性** - 遵循项目现有的代码风格
- **简洁性** - 避免不必要的复杂性
- **健壮性** - 处理边界情况和错误

### 安全要求
- 不引入安全漏洞
- 保护用户隐私
- 验证输入数据
- 安全的网络配置

### 文档要求
- 重要功能需要文档说明
- 配置变更需要更新说明
- 复杂逻辑需要代码注释
- 破坏性变更需要迁移指南

## 🏷️ Issue和PR标签

### Issue标签
- `bug` - 确认的错误
- `enhancement` - 功能增强
- `documentation` - 文档相关
- `question` - 疑问或讨论
- `help-wanted` - 需要社区帮助
- `good-first-issue` - 适合新手
- `priority-high` - 高优先级
- `needs-more-info` - 需要更多信息

### PR标签
- `ready-for-review` - 准备审查
- `work-in-progress` - 开发中
- `breaking-change` - 破坏性变更
- `needs-testing` - 需要测试
- `approved` - 已批准

## 👥 社区行为准则

### 期望行为
- ✅ 保持友善和专业
- ✅ 尊重不同观点
- ✅ 接受建设性批评
- ✅ 关注社区利益
- ✅ 帮助新手成长

### 不当行为
- ❌ 人身攻击或歧视
- ❌ 恶意评论或骚扰
- ❌ 发布无关或垃圾内容
- ❌ 泄露私人信息
- ❌ 违法或有害行为

## 🚀 开发环境

### 技术要求
- Docker 20.10+
- Docker Compose 2.0+
- Git 2.20+
- 基础的Linux命令行知识

### 本地开发
1. Fork并克隆项目
2. 阅读项目文档
3. 构建测试环境
4. 进行开发和测试

### 测试环境
- 支持多种Linux发行版测试
- 浏览器兼容性测试
- 网络配置测试
- 性能基准测试

## 📊 贡献认可

### 贡献者权益
- 在贡献者列表中展示
- 获得项目维护者的感谢
- 参与项目决策讨论
- 优先获得技术支持

### 成为维护者
活跃的贡献者可能被邀请成为项目维护者：
- 持续的高质量贡献
- 积极参与社区讨论
- 帮助其他贡献者
- 展现技术领导力

## 🔗 有用资源

### 项目资源
- [项目主页](https://github.com/nickrunning/wechat-selkies)
- [Issues追踪](https://github.com/nickrunning/wechat-selkies/issues)
- [讨论区](https://github.com/nickrunning/wechat-selkies/discussions)
- [发布历史](https://github.com/nickrunning/wechat-selkies/releases)

### 开发工具
- [GitHub CLI](https://cli.github.com/) - 命令行工具
- [GitHub Desktop](https://desktop.github.com/) - 图形化工具
- [Docker文档](https://docs.docker.com/) - 容器技术
- [Markdown指南](https://guides.github.com/features/mastering-markdown/) - 文档格式

### 学习资源
- [Git教程](https://git-scm.com/doc) - 版本控制
- [开源贡献指南](https://opensource.guide/) - 通用指南
- [GitHub文档](https://docs.github.com/) - 平台功能

## ❓ 获取帮助

如果您在贡献过程中遇到问题：

1. **查阅文档** - 先查看项目文档和本指南
2. **搜索历史** - 在Issues和讨论区搜索类似问题
3. **询问社区** - 在讨论区提问
4. **联系维护者** - 通过Issues或邮件联系

## 🎉 感谢贡献

每一个贡献都对项目很有价值：
- 🐛 Bug报告帮助改进项目质量
- 💡 建议推动项目创新发展
- 📝 文档让更多人受益
- 💻 代码直接改善用户体验
- 💬 讨论建设活跃社区

**感谢您的贡献！** 让我们一起建设更好的开源项目！ 🚀

---

*本指南会持续更新，欢迎提出改进建议。*