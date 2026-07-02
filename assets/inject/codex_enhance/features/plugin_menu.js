// ==Shim==
// @name        Shim codex_enhance — features/plugin_menu
// @description 侧栏「插件」入口。挂在 shim 菜单项下面一行,点击目前只弹 toast 占位。
//              后续接入插件解锁逻辑时,在 handleClick 里换成真实动作即可。
//              对外: ensure() — 由 runtime/scheduler 在 ensureAll 里每轮调一次。
// @layer       features
// ==/Shim==

(() => {
  if (!window.__shimCodexEnhanceLoaded) return;
  const ns = window.__shimCodex;
  const ids = ns.ids;

  function findAnchor() {
    // shim 菜单项存在 → 挂它下面;否则挂 claude 面板/按钮下面(fallback)
    const shimItem = document.getElementById(ids.menuItem);
    if (shimItem) return shimItem;
    const panel = document.getElementById(ids.navPanel);
    if (panel) return panel;
    return document.getElementById(ids.navBtn);
  }

  function handleClick() {
    // 占位实现:点击弹 toast。真接入插件解锁流程时,替换成:
    //   ns.features.pluginPanel.togglePopover(item)
    //   或调 ns.bridge.call('/plugin/xxx', {...})
    const toast = ns.ui && ns.ui.toast;
    if (toast && typeof toast.show === 'function') {
      toast.show('插件功能开发中', 'info');
    }
  }

  function buildItem() {
    const item = document.createElement('button');
    item.id = ids.pluginMenuItem;
    item.type = 'button';
    item.className =
      'focus-visible:outline-token-border relative h-token-nav-row px-row-x py-row-y cursor-interaction shrink-0 items-center overflow-hidden rounded-lg text-left text-sm focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 disabled:cursor-not-allowed disabled:opacity-50 gap-2 flex w-full hover:bg-token-list-hover-background';

    const row = document.createElement('div');
    row.className =
      'flex min-w-0 items-center text-base gap-2 flex-1 text-token-foreground';

    const iconWrap = document.createElement('span');
    iconWrap.style.display = 'inline-flex';
    iconWrap.innerHTML = ids.pluginIconSvg;

    const label = document.createElement('span');
    label.className = 'flex-1 min-w-0 truncate';
    label.textContent = '插件';

    row.appendChild(iconWrap);
    row.appendChild(label);
    item.appendChild(row);

    item.addEventListener('click', (event) => {
      event.preventDefault();
      event.stopPropagation();
      handleClick();
    });
    item.addEventListener('mouseenter', () => {
      item.setAttribute('data-highlighted', '');
    });
    item.addEventListener('mouseleave', () => {
      item.removeAttribute('data-highlighted');
    });

    return item;
  }

  function ensure() {
    const navList = ns.features.claudeBridge?.findNavList?.();
    if (!navList) return;
    const anchor = findAnchor();
    if (!anchor || anchor.parentElement !== navList) return;

    const existing = document.getElementById(ids.pluginMenuItem);
    if (
      existing &&
      existing.parentElement === navList &&
      existing.previousElementSibling === anchor
    ) {
      return;
    }
    ns.runtime?.trace?.t?.('ensurePluginMenuItem: INSERT into nav');
    existing?.remove();
    const item = buildItem();
    anchor.insertAdjacentElement('afterend', item);
  }

  ns.features.pluginMenu = { ensure };
})();
