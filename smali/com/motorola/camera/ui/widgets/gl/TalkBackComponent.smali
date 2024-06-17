.class public final Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;
.super Lcom/motorola/camera/ui/uicomponents/AbstractComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# static fields
.field public static final mInflationStates:Ljava/util/ArrayList;


# instance fields
.field public mAcceptView:Landroid/widget/Button;

.field public mDeleteView:Landroid/widget/Button;

.field public final mHandler:Landroid/os/Handler;

.field public mModeCarousel:Landroid/widget/LinearLayout;

.field public mModeCarouselTextList:Ljava/util/ArrayList;

.field public mModeMenu:Landroid/widget/RelativeLayout;

.field public mPlayView:Landroid/widget/Button;

.field public mReload:Landroid/widget/Button;

.field public mTalkbackRootView:Landroid/widget/RelativeLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mInflationStates:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;-><init>(Landroid/view/View;Lcom/motorola/camera/EventListener;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mHandler:Landroid/os/Handler;

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mInflationStates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    sget-object p1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final delayUpdate()V
    .locals 3

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    iput-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mViewStub:Landroid/view/ViewStub;

    const v2, 0x7f0a0402

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mTalkbackRootView:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a0039

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mAcceptView:Landroid/widget/Button;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a013c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mDeleteView:Landroid/widget/Button;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a030a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mPlayView:Landroid/widget/Button;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a033f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mReload:Landroid/widget/Button;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a0295

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeCarousel:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    const v2, 0x7f0a0296

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mModeMenu:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->REVIEW_LAYOUT:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_CAROUSEL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_MODE_MENU:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->VISIBLE_CAROUSEL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v0, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    :cond_0
    sget-object p0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_TALKBACK_FROM_TALKBACK:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {p0, v0, v1}, Lcom/motorola/camera/Notifier;->postNotify(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 4

    new-instance p0, Lcom/google/common/base/Joiner;

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/common/base/Joiner;-><init>(I)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_IDLE:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add(Ljava/util/Collection;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v1, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_WAIT_LOADING_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v2, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    sget-object v3, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/fsm/camera/StateKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/Joiner;->add([Lcom/motorola/camera/fsm/camera/StateKey;)V

    iget-object p0, p0, Lcom/google/common/base/Joiner;->separator:Ljava/lang/Object;

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public final inflateViewStub()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isTalkbackLayoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->delayUpdate()V

    :cond_0
    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_TALKBACK:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void
.end method

.method public final onConfigurationChanged(Z)V
    .locals 1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->isTalkbackLayoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->delayUpdate()V

    :cond_0
    return-void
.end method

.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_TALKBACK:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->delayUpdate()V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->REVIEW_LAYOUT:Lcom/motorola/camera/Notifier$TYPE;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mHandler:Landroid/os/Handler;

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_CAROUSEL:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p1, v0, :cond_2

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->UPDATE_MODE_MENU:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p1, v0, :cond_3

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;Ljava/lang/Object;I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->VISIBLE_CAROUSEL:Lcom/motorola/camera/Notifier$TYPE;

    if-ne p1, v0, :cond_4

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda0;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;Ljava/lang/Object;I)V

    :goto_0
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public final stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->stateChanged(Lcom/motorola/camera/fsm/ChangeEvent;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->isViewStubInflated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->MODE_SHOW_UI_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;I)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates;->SS_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;I)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/motorola/camera/fsm/camera/states/modes/VideoStates;->VIDEO_REVIEW_KEY:Lcom/motorola/camera/fsm/camera/StateKey;

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, v1}, Lcom/motorola/camera/fsm/ChangeEvent;->isExiting(Lcom/motorola/camera/fsm/camera/StateKey;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda1;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;I)V

    :goto_0
    invoke-virtual {v2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method public final viewStubInflationStates()Ljava/util/List;
    .locals 0

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/TalkBackComponent;->mInflationStates:Ljava/util/ArrayList;

    return-object p0
.end method
