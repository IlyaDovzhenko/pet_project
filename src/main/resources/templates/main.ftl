<#import "parts/common.ftl" as common>
<#import "parts/login.ftl" as logout_form>

<@common.page>
    <h3>Main page</h3>
    <div class="mt-3">
        <form action="/main" method="post">
            <input type="text" name="newMessage" placeholder="Enter new message" />
            <input type="text" name="tag" placeholder="Tag" />
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button type="submit">Add</button>
        </form>
    </div>
    <div class="mt-3 mb-3">
        <form action="/main" method="get">
            <input type="text" name="filter" value="${filter?ifExists}" />
            <button type="submit">Find</button>
        </form>
    </div>

    <div>List of messages: </div>

    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
        </div>
        <#else>
        No messages.
    </#list>
</@common.page>