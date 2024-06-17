.class public final Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/StateChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/StateChangeListener;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$4;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$4;->this$0:Lcom/motorola/camera/fsm/camera/StateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 1

    iget p2, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$4;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$4;->this$0:Lcom/motorola/camera/fsm/camera/StateChangeListener;

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mViewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p1, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->addSupportedTextures(Lcom/motorola/camera/PreviewSize;I)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;->updateTalkback()V

    return-void

    :goto_0
    sget-object p2, Lcom/motorola/camera/Notifier$TYPE;->APPLY_PREVIEW_DONE:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p1, p2, :cond_0

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    iget-boolean p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mShouldShow:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {p1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {p1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getYOffsetIfNotWideScreen()F

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->mLevelerView:Lcom/motorola/camera/ui/widgets/LevelerView;

    neg-float p1, p1

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mMainLine:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/LevelerView;->mLevelerLine:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/LevelerView;->updateMainLineResource()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
