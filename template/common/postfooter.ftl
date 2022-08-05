<div class="by_copyright">
    <div class="by_copyright_author">
        <span class="by_copyright_meta">文章作者:</span>
        <span class="by_copyright_info"><a href="mailto:undefined" target="_blank">${user.nickname!}</a></span>
    </div>

    <div class="by_copyright_author ellipsis">
        <span class="by_copyright_meta">版权声明:</span>
        <span class="by_copyright_info">本博客所有文章除特别声明外，均采用 <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/"
                                                              rel="external nofollow noreferrer" target="_blank">CC BY-NC-SA 4.0</a> 许可协议。转载请註明来自 <a
                    href="/" title="${user.nickname!}" target="_blank">${user.nickname!}</a>！</span>
    </div>
</div>

<div class="by_post_tag_share">
    <div class="tag_list">
        <#list post.tags as  tag>
            <a href="${tag.fullPath!}" class="">${tag.name!}</a>
        </#list>
    </div>

</div>

<#if  settings.enable_donate>
    <div class="by_reward center">
        <div class="by_btn">
            <i class="by-font by_icon_qrcode"></i>
            打赏
        </div>
        <div class="by_reward_box animate__animated animate__bounceIn">
            <img class="lazyload" data-src="${settings.qrcode_zfb!}" src="${lazy_img}" onerror="this.src='${err_img}'"
                 alt="支付宝">
            <img class="lazyload" data-src="${settings.qrcode_wx!}" src="${lazy_img}" onerror="this.src='${err_img}'"
                 alt="微信">
        </div>
    </div>
</#if>


<div class="by_post_pagination">
    <#if prevPost??>
        <a href="${prevPost.fullPath!}" title="${prevPost.title!}">上一篇</a>
    </#if>
    <#if nextPost??>
        <a href="${nextPost.fullPath!}" title="${nextPost.title!}">下一篇</a>
    </#if>
</div>

