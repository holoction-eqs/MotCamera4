.class public final enum Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

.field public static final enum RAW_SENSOR:Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

.field public static final enum UNKNOWN:Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

.field public static final enum YUV_420_888:Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;->UNKNOWN:Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    new-instance v1, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    const-string v2, "RAW_SENSOR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;->RAW_SENSOR:Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    new-instance v2, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    const-string v3, "YUV_420_888"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;->YUV_420_888:Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    new-instance v3, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    const-string v4, "RAW10"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    const-string v5, "DEPTH16"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    const-string v6, "DEPTH_POINT_CLOUD"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v0 .. v5}, [Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;->$VALUES:[Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;
    .locals 1

    const-class v0, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;->$VALUES:[Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    invoke-virtual {v0}, [Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mcf/McfInputStream$StreamFormat;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown StreamFormat : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/mcf/McfInputStream;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown StreamFormat : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "DEPTH_POINT_CLOUD"

    return-object p0

    :cond_1
    const-string p0, "DEPTH16"

    return-object p0

    :cond_2
    const-string p0, "RAW10"

    return-object p0

    :cond_3
    const-string p0, "YUV_420_888"

    return-object p0

    :cond_4
    const-string p0, "RAW_SENSOR"

    return-object p0
.end method
