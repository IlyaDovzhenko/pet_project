<#import "parts/common.ftl" as common>
<#import "parts/login.ftl" as logout>

<@common.page>
    <@logout.logout "/logout" />
    <span><a href="user">User list</a></span>
    <h3>User editor</h3>
    <form action="/user" method="post">
        <input type="text" name="username" value="${user.username}" />
        <#list roles as role>
            <div>
                <label>
                    <input type="checkbox"
                           name="${role}"
                            ${user.roles?seq_contains(role)?string("checked", " ")}
                    >${role}
                </label>
            </div>
        </#list>
        <input type="hidden" value="${user.id}" name="userId" >
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button type="submit">Save</button>
    </form>

</@common.page>