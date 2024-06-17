.class public final enum Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;

.field public static final enum DEPTH_RENDER_ORIGINAL:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;

    invoke-direct {v0}, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;-><init>()V

    sput-object v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;->DEPTH_RENDER_ORIGINAL:Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;

    filled-new-array {v0}, [Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;->$VALUES:[Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "DEPTH_RENDER_ORIGINAL"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;->$VALUES:[Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;

    invoke-virtual {v0}, [Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/record/ImageCaptureRecord$AuxiliaryImage;

    return-object v0
.end method
