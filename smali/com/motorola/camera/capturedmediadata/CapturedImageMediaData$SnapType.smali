.class public final enum Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum AI_CUD:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum AI_IST:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum AI_LLS:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum ALT_BEST_SHOT_2:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum ALT_BEST_SHOT_3:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum ALT_BEST_SHOT_4:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum ALT_BEST_SHOT_5:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum BEST_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum COMP_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum NORMAL:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum UNKNOWN:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field public static final enum VIDEO_HDR:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

.field private static final mLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mIdx:I

.field public final mSuffix:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;
    .locals 12

    sget-object v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->NORMAL:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    sget-object v1, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->BEST_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    sget-object v2, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->ALT_BEST_SHOT_2:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    sget-object v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->ALT_BEST_SHOT_3:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    sget-object v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->ALT_BEST_SHOT_4:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    sget-object v5, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->ALT_BEST_SHOT_5:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    sget-object v6, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->VIDEO_HDR:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    sget-object v7, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->COMP_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    sget-object v8, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_LLS:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    sget-object v9, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_IST:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    sget-object v10, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_CUD:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    sget-object v11, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->UNKNOWN:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    filled-new-array/range {v0 .. v11}, [Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->NORMAL:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const/4 v1, 0x1

    const-string v4, "_TOP"

    const-string v5, "BEST_SHOT"

    invoke-direct {v0, v5, v1, v1, v4}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->BEST_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const/4 v1, 0x2

    const-string v4, "_TP2"

    const-string v5, "ALT_BEST_SHOT_2"

    invoke-direct {v0, v5, v1, v1, v4}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->ALT_BEST_SHOT_2:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const/4 v1, 0x3

    const-string v4, "_TP3"

    const-string v5, "ALT_BEST_SHOT_3"

    invoke-direct {v0, v5, v1, v1, v4}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->ALT_BEST_SHOT_3:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const/4 v1, 0x4

    const-string v4, "_TP4"

    const-string v5, "ALT_BEST_SHOT_4"

    invoke-direct {v0, v5, v1, v1, v4}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->ALT_BEST_SHOT_4:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const/4 v1, 0x5

    const-string v4, "_TP5"

    const-string v5, "ALT_BEST_SHOT_5"

    invoke-direct {v0, v5, v1, v1, v4}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->ALT_BEST_SHOT_5:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const/4 v1, 0x6

    const-string v4, "_HDR"

    const-string v5, "VIDEO_HDR"

    invoke-direct {v0, v5, v1, v1, v4}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->VIDEO_HDR:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const/4 v1, 0x7

    const-string v4, "_COMP"

    const-string v5, "COMP_SHOT"

    invoke-direct {v0, v5, v1, v1, v4}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->COMP_SHOT:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const/16 v1, 0x8

    const-string v4, "_AI"

    const-string v5, "AI_LLS"

    invoke-direct {v0, v5, v1, v1, v4}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_LLS:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const/16 v1, 0x9

    const-string v4, "_IS"

    const-string v5, "AI_IST"

    invoke-direct {v0, v5, v1, v1, v4}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_IST:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const/16 v1, 0xa

    const-string v4, "_CUD"

    const-string v5, "AI_CUD"

    invoke-direct {v0, v5, v1, v1, v4}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->AI_CUD:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    new-instance v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    const/16 v1, 0xb

    const/4 v4, -0x1

    const-string v5, "UNKNOWN"

    invoke-direct {v0, v5, v1, v4, v3}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->UNKNOWN:Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    invoke-static {}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->$values()[Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->$VALUES:[Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mLookup:Landroid/util/SparseArray;

    invoke-static {}, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->values()[Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mLookup:Landroid/util/SparseArray;

    iget v5, v3, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mIdx:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mIdx:I

    iput-object p4, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;
    .locals 1

    const-class v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->$VALUES:[Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    invoke-virtual {v0}, [Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;

    return-object v0
.end method


# virtual methods
.method public hasSuffix()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/capturedmediadata/CapturedImageMediaData$SnapType;->mSuffix:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
