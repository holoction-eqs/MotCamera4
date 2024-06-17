.class public final Landroidx/fragment/app/FragmentManager$FragmentIntentSenderContract;
.super L_COROUTINE/_BOUNDARY;
.source "SourceFile"


# virtual methods
.method public final createIntent(Landroidx/activity/ComponentActivity;Ljava/lang/Object;)Landroid/content/Intent;
    .locals 3

    check-cast p2, Landroidx/activity/result/IntentSenderRequest;

    new-instance p0, Landroid/content/Intent;

    const-string p1, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p1, p2, Landroidx/activity/result/IntentSenderRequest;->mFillInIntent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v0, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v0, "androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/activity/result/IntentSenderRequest;

    iget-object v0, p2, Landroidx/activity/result/IntentSenderRequest;->mIntentSender:Landroid/content/IntentSender;

    const/4 v1, 0x0

    iget v2, p2, Landroidx/activity/result/IntentSenderRequest;->mFlagsMask:I

    iget p2, p2, Landroidx/activity/result/IntentSenderRequest;->mFlagsValues:I

    invoke-direct {p1, v0, v1, v2, p2}, Landroidx/activity/result/IntentSenderRequest;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    move-object p2, p1

    :cond_0
    const-string p1, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x2

    invoke-static {p1}, Landroidx/fragment/app/FragmentManagerImpl;->isLoggingEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "CreateIntent created the following intent: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0
.end method

.method public final parseResult(Landroid/content/Intent;I)Ljava/lang/Object;
    .locals 0

    new-instance p0, Landroidx/activity/result/ActivityResult;

    invoke-direct {p0, p1, p2}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/content/Intent;I)V

    return-object p0
.end method
