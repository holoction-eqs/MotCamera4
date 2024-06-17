.class public final Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;
.super L_COROUTINE/_BOUNDARY;
.source "SourceFile"


# virtual methods
.method public final createIntent(Landroidx/activity/ComponentActivity;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 0

    check-cast p2, [Ljava/lang/String;

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    const-string p1, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "Intent(ACTION_REQUEST_PE\u2026EXTRA_PERMISSIONS, input)"

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getSynchronousResult(Landroidx/activity/ComponentActivity;Ljava/lang/Object;)Lcom/adobe/xmp/impl/xpath/XMPPath;
    .locals 7

    check-cast p2, [Ljava/lang/String;

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    const/4 v2, 0x2

    if-eqz p0, :cond_1

    new-instance p0, Lcom/adobe/xmp/impl/xpath/XMPPath;

    sget-object p1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-direct {p0, p1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;-><init>(Ljava/lang/Object;I)V

    goto/16 :goto_6

    :cond_1
    array-length p0, p2

    move v3, v1

    :goto_1
    if-ge v3, p0, :cond_7

    aget-object v4, p2, v3

    sget-object v5, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    if-eqz v4, :cond_6

    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v4, Landroidx/core/app/NotificationManagerCompat;

    invoke-direct {v4, p1}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroidx/activity/ComponentActivity;)V

    iget-object v4, v4, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v4}, Landroidx/core/app/NotificationManagerCompat$Api24Impl;->areNotificationsEnabled(Landroid/app/NotificationManager;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    const/4 v4, -0x1

    goto :goto_2

    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    :goto_2
    if-nez v4, :cond_4

    move v4, v0

    goto :goto_3

    :cond_4
    move v4, v1

    :goto_3
    if-nez v4, :cond_5

    move v0, v1

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "permission must be non-null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_4
    if-eqz v0, :cond_a

    array-length p0, p2

    invoke-static {p0}, Ljms/IJobMgrService$_Parcel;->mapCapacity(I)I

    move-result p0

    const/16 p1, 0x10

    if-ge p0, p1, :cond_8

    move p0, p1

    :cond_8
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    array-length p0, p2

    :goto_5
    if-ge v1, p0, :cond_9

    aget-object v0, p2, v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    new-instance p0, Lcom/adobe/xmp/impl/xpath/XMPPath;

    invoke-direct {p0, p1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPath;-><init>(Ljava/lang/Object;I)V

    goto :goto_6

    :cond_a
    const/4 p0, 0x0

    :goto_6
    return-object p0
.end method

.method public final parseResult(Landroid/content/Intent;I)Ljava/lang/Object;
    .locals 4

    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    const-string p2, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const-string v0, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget v3, p1, v2

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-static {p2}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt___MapsJvmKt;->toMap(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    :cond_5
    :goto_2
    return-object p0
.end method
