.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->$r8$clinit:I

    return-object v0

    :pswitch_1
    sget p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->$r8$clinit:I

    return-object v0

    :pswitch_2
    const/4 p0, 0x1

    sput-boolean p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionEnable:Z

    :pswitch_3
    return-object v0

    :pswitch_4
    sget p0, Lcom/motorola/camera/ui/widgets/gl/HelpTooltips;->$r8$clinit:I

    return-object v0

    :goto_0
    sget p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->mDensity:F

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
