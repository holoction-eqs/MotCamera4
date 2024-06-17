.class public final enum Lcom/motorola/camera/ShotType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/ShotType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/ShotType;

.field public static final enum CINEMA_GRAPH:Lcom/motorola/camera/ShotType;

.field public static final enum MULTI:Lcom/motorola/camera/ShotType;

.field public static final enum PANORAMA:Lcom/motorola/camera/ShotType;

.field public static final enum SINGLE:Lcom/motorola/camera/ShotType;

.field public static final enum SINGLE_RAW:Lcom/motorola/camera/ShotType;

.field public static final enum VIDEO:Lcom/motorola/camera/ShotType;

.field public static final enum VIDEO_SLOW_MOTION:Lcom/motorola/camera/ShotType;

.field public static final enum VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

.field public static final enum VIDEO_ULTRA_HD:Lcom/motorola/camera/ShotType;


# instance fields
.field private final mMinimumFreeBytes:J


# direct methods
.method private static synthetic $values()[Lcom/motorola/camera/ShotType;
    .locals 9

    sget-object v0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    sget-object v1, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    sget-object v2, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    sget-object v3, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    sget-object v4, Lcom/motorola/camera/ShotType;->VIDEO_SLOW_MOTION:Lcom/motorola/camera/ShotType;

    sget-object v5, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    sget-object v6, Lcom/motorola/camera/ShotType;->VIDEO_ULTRA_HD:Lcom/motorola/camera/ShotType;

    sget-object v7, Lcom/motorola/camera/ShotType;->SINGLE_RAW:Lcom/motorola/camera/ShotType;

    sget-object v8, Lcom/motorola/camera/ShotType;->CINEMA_GRAPH:Lcom/motorola/camera/ShotType;

    filled-new-array/range {v0 .. v8}, [Lcom/motorola/camera/ShotType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/motorola/camera/ShotType;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    const-wide/32 v3, 0x3200000

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/camera/ShotType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/motorola/camera/ShotType;->SINGLE:Lcom/motorola/camera/ShotType;

    new-instance v0, Lcom/motorola/camera/ShotType;

    const-string v1, "MULTI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/camera/ShotType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/motorola/camera/ShotType;->MULTI:Lcom/motorola/camera/ShotType;

    new-instance v0, Lcom/motorola/camera/ShotType;

    const-string v1, "VIDEO"

    const/4 v2, 0x2

    const-wide/32 v5, 0xc800000

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/motorola/camera/ShotType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    new-instance v0, Lcom/motorola/camera/ShotType;

    const/4 v1, 0x3

    const-wide/32 v7, 0x6400000

    const-string v2, "PANORAMA"

    invoke-direct {v0, v2, v1, v7, v8}, Lcom/motorola/camera/ShotType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    new-instance v0, Lcom/motorola/camera/ShotType;

    const-string v1, "VIDEO_SLOW_MOTION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/motorola/camera/ShotType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/motorola/camera/ShotType;->VIDEO_SLOW_MOTION:Lcom/motorola/camera/ShotType;

    new-instance v0, Lcom/motorola/camera/ShotType;

    const-string v1, "VIDEO_SNAPSHOT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/motorola/camera/ShotType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/motorola/camera/ShotType;->VIDEO_SNAPSHOT:Lcom/motorola/camera/ShotType;

    new-instance v0, Lcom/motorola/camera/ShotType;

    const-string v1, "VIDEO_ULTRA_HD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/motorola/camera/ShotType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/motorola/camera/ShotType;->VIDEO_ULTRA_HD:Lcom/motorola/camera/ShotType;

    new-instance v0, Lcom/motorola/camera/ShotType;

    const/4 v1, 0x7

    const-wide/32 v2, 0x4b00000

    const-string v4, "SINGLE_RAW"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/motorola/camera/ShotType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/motorola/camera/ShotType;->SINGLE_RAW:Lcom/motorola/camera/ShotType;

    new-instance v0, Lcom/motorola/camera/ShotType;

    const/16 v1, 0x8

    const-wide/32 v2, 0x9600000

    const-string v4, "CINEMA_GRAPH"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/motorola/camera/ShotType;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/motorola/camera/ShotType;->CINEMA_GRAPH:Lcom/motorola/camera/ShotType;

    invoke-static {}, Lcom/motorola/camera/ShotType;->$values()[Lcom/motorola/camera/ShotType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ShotType;->$VALUES:[Lcom/motorola/camera/ShotType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/motorola/camera/ShotType;->mMinimumFreeBytes:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ShotType;
    .locals 1

    const-class v0, Lcom/motorola/camera/ShotType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ShotType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ShotType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ShotType;->$VALUES:[Lcom/motorola/camera/ShotType;

    invoke-virtual {v0}, [Lcom/motorola/camera/ShotType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ShotType;

    return-object v0
.end method


# virtual methods
.method public getMinimumFreeBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/motorola/camera/ShotType;->mMinimumFreeBytes:J

    return-wide v0
.end method

.method public isCinemaGraph()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/ShotType;->CINEMA_GRAPH:Lcom/motorola/camera/ShotType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPanorama()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/ShotType;->PANORAMA:Lcom/motorola/camera/ShotType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideo()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO:Lcom/motorola/camera/ShotType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO_SLOW_MOTION:Lcom/motorola/camera/ShotType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/motorola/camera/ShotType;->VIDEO_ULTRA_HD:Lcom/motorola/camera/ShotType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
