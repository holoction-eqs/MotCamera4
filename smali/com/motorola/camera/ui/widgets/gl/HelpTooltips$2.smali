.class public final Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;
.super Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    invoke-direct {p0}, Lcom/motorola/camera/ui/widgets/gl/animations/GeneralAnimation$GeneralAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyValue(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;F)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    return-void

    :goto_0
    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->setAlpha(F)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationEnd(Lcom/motorola/camera/ui/widgets/gl/animations/Animation;)V
    .locals 0

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->dismissCurrentTooltip()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/TooltipTexture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mTooltipTexture:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$1;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mGradientTexture:Lcom/motorola/camera/ui/widgets/gl/textures/GradientTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->mCurrentTooltip:Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$Tooltip;->mHasGradient:Z

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
