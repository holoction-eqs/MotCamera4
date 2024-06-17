.class public final enum Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

.field public static final enum COMPLETION:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

.field public static final enum ERROR:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

.field public static final enum INFO:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    const-string v1, "COMPLETION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->COMPLETION:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    new-instance v1, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    const-string v2, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->ERROR:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    new-instance v2, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    const-string v3, "INFO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->INFO:Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->$VALUES:[Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;
    .locals 1

    const-class v0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;
    .locals 1

    sget-object v0, Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->$VALUES:[Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    invoke-virtual {v0}, [Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/device/callables/MediaStatusListener$Status$TYPE;

    return-object v0
.end method
