.class public abstract Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final createControlVisibilityByNotifier(Lcom/motorola/camera/Notifier$TYPE;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;
    .locals 1

    .line 1
    const-string v0, "typeExpected"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/Notifier$TYPE;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    return-object v0
.end method

.method public static final createControlVisibilityByNotifier(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/motorola/camera/Notifier$TYPE;)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;
    .locals 1

    .line 2
    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p2, p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->createControlVisibilityByNotifier(Lcom/motorola/camera/Notifier$TYPE;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    move-result-object p0

    return-object p0
.end method

.method public static final registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V
    .locals 1

    const-string v0, "notifier"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    :goto_0
    return-void
.end method
