.class public abstract enum Lcom/motorola/camera/scenedetection/scene/FocusMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/scenedetection/scene/FocusMode;

.field public static final enum AUTO:Lcom/motorola/camera/scenedetection/scene/FocusMode$AUTO;

.field public static final enum INFINITY:Lcom/motorola/camera/scenedetection/scene/FocusMode$INFINITY;


# instance fields
.field public originalAFMode:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/FocusMode$AUTO;

    invoke-direct {v0}, Lcom/motorola/camera/scenedetection/scene/FocusMode$AUTO;-><init>()V

    sput-object v0, Lcom/motorola/camera/scenedetection/scene/FocusMode;->AUTO:Lcom/motorola/camera/scenedetection/scene/FocusMode$AUTO;

    new-instance v1, Lcom/motorola/camera/scenedetection/scene/FocusMode$INFINITY;

    invoke-direct {v1}, Lcom/motorola/camera/scenedetection/scene/FocusMode$INFINITY;-><init>()V

    sput-object v1, Lcom/motorola/camera/scenedetection/scene/FocusMode;->INFINITY:Lcom/motorola/camera/scenedetection/scene/FocusMode$INFINITY;

    new-instance v2, Lcom/motorola/camera/scenedetection/scene/FocusMode$MACRO;

    invoke-direct {v2}, Lcom/motorola/camera/scenedetection/scene/FocusMode$MACRO;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/motorola/camera/scenedetection/scene/FocusMode;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    sput-object v3, Lcom/motorola/camera/scenedetection/scene/FocusMode;->$VALUES:[Lcom/motorola/camera/scenedetection/scene/FocusMode;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/motorola/camera/scenedetection/scene/FocusMode;->originalAFMode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/scenedetection/scene/FocusMode;
    .locals 1

    const-class v0, Lcom/motorola/camera/scenedetection/scene/FocusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/scenedetection/scene/FocusMode;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/scenedetection/scene/FocusMode;
    .locals 1

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/FocusMode;->$VALUES:[Lcom/motorola/camera/scenedetection/scene/FocusMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/scenedetection/scene/FocusMode;

    return-object v0
.end method


# virtual methods
.method public abstract apply(Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public final applyFixedFocus(FLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/scenedetection/scene/FocusMode;->originalAFMode:I

    :cond_0
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public revert(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCAFSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget p0, p0, Lcom/motorola/camera/scenedetection/scene/FocusMode;->originalAFMode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
