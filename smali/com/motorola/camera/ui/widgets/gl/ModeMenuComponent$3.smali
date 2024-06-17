.class public final Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$3;
.super Lcom/motorola/camera/ui/widgets/gl/DragBehavior;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

.field public final synthetic this$0$com$motorola$camera$ui$widgets$gl$ModeMenuComponent$ModesDragBehavior:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$3;->this$0$com$motorola$camera$ui$widgets$gl$ModeMenuComponent$ModesDragBehavior:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;-><init>()V

    return-void
.end method


# virtual methods
.method public final drag(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "ORIGIN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    const-string v2, "DELTA_VALUE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    const-string v4, "ENABLE"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$3;->this$0$com$motorola$camera$ui$widgets$gl$ModeMenuComponent$ModesDragBehavior:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    invoke-virtual {p0, v1, v3, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/DragBehavior;->drag(Landroid/graphics/PointF;FZLcom/motorola/camera/ui/widgets/gl/iGlComponent;)V

    const-string v1, "SWITCH_CASE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;->mMenuTex:Lcom/motorola/camera/ui/widgets/gl/textures/ModeMenuTexture;

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v0, "IS_TOUCHED"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onDragApplyValue(F)V
    .locals 0

    return-void
.end method

.method public final onDragEnd(F)V
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent$3;->this$0:Lcom/motorola/camera/ui/widgets/gl/ModeMenuComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->BACK_KEY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void
.end method

.method public final onDragStart()V
    .locals 0

    return-void
.end method
