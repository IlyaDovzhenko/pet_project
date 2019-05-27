<#import "parts/common.ftl" as common>

<@common.page>
    <h3>List of users</h3>

    <table>
        <thead>
            <th>Name</th>
            <th>Role</th>
            <th></th>
        </thead>
        <tbody>
        <#list users as user>
            <tr>
                <td>${user.username}</td>
                <td><#list user.roles as role>${role}<#sep>, </#list></td>
                <td><a href="/user/${user.id}">edit</a></td>
            </tr>
            <#else>
            No users!
        </#list>
        </tbody>
    </table>
</@common.page>