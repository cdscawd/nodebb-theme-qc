<h5>[[global:upvoters]] <small>({upvoteCount})</small></h5>
<!-- BEGIN upvoters -->
<a href="{config.relative_path}/user/{upvoters.userslug}">
<!-- IF upvoters.picture -->
<img class="avatar avatar-sm" src="{upvoters.picture}" title="{upvoters.username}"/>
<!-- ELSE -->
<div class="avatar avatar-sm" style="border-radius: 50%;background-color: {upvoters.icon:bgColor};">{upvoters.icon:text}</div>
<!-- ENDIF upvoters.picture -->
</a>
<!-- END upvoters -->
