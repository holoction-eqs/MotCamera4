.class public final enum Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

.field public static final enum LIVE_FILTER_BAR:Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

.field public static final enum MODES_SLIDER:Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

.field public static final enum PIP_PREVIEW:Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    const-string v1, "MODES_SLIDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;->MODES_SLIDER:Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    new-instance v1, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    const-string v2, "FACE_BEAUTY_SLIDER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    const-string v3, "LIVE_FILTER_BAR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;->LIVE_FILTER_BAR:Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    new-instance v3, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    const-string v4, "GALLERY_THUMBNAIL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    const-string v5, "PIP_PREVIEW"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;->PIP_PREVIEW:Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;->$VALUES:[Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;
    .locals 1

    const-class v0, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;
    .locals 1

    sget-object v0, Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;->$VALUES:[Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    invoke-virtual {v0}, [Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/utility/TouchKeepOutHelper$Info$COMPONENT;

    return-object v0
.end method
