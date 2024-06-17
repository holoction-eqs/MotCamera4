.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->setRoiVisibility(Z)V

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mShouldKeepHidden:Z

    return-object v0

    :goto_0
    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mShouldKeepHidden:Z

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->mShouldKeepHidden:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->isDrawEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/TouchRoiComponent;->setRoiVisibility(Z)V

    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
