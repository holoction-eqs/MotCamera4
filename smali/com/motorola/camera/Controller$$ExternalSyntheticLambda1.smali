.class public final synthetic Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ActivityStarter;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ActivityStarter;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ActivityStarter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    iget v0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/Controller$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ActivityStarter;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/Controller;

    iget-object p1, p0, Lcom/motorola/camera/Controller;->mLayoutManager:Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    iget-object v0, p0, Lcom/motorola/camera/Controller;->mActivityContext:Landroid/app/Activity;

    invoke-interface {p1, v0, p2}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->updateInsets(Landroid/app/Activity;Landroid/view/WindowInsets;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/Controller;->setScreenParameters(Z)V

    :cond_0
    return-object p2

    :goto_0
    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    sget v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->$r8$clinit:I

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "insets"

    invoke-static {p2, p1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->updateUiForSplitScreen(Z)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
