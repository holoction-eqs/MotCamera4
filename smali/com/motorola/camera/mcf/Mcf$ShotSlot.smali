.class public final enum Lcom/motorola/camera/mcf/Mcf$ShotSlot;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/Mcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShotSlot"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/motorola/camera/mcf/Mcf$ShotSlot;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public static final enum AI_CUD:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public static final enum AI_IST:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public static final enum AI_LLS:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public static final enum BESTSHOT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public static final enum BG_SERVICE:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public static final enum COMPOSITION:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public static final enum DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

.field public static final enum INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;


# instance fields
.field private final mIntValue:I


# direct methods
.method private static synthetic $values()[Lcom/motorola/camera/mcf/Mcf$ShotSlot;
    .locals 8

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v1, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v2, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->BESTSHOT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v3, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->COMPOSITION:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v4, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->BG_SERVICE:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v5, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->AI_LLS:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v6, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->AI_IST:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    sget-object v7, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->AI_CUD:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    filled-new-array/range {v0 .. v7}, [Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    const/4 v1, -0x1

    const-string v2, "INVALID"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    const-string v1, "DEFAULT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    const-string v1, "BESTSHOT"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->BESTSHOT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    const-string v1, "COMPOSITION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->COMPOSITION:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    const-string v1, "BG_SERVICE"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->BG_SERVICE:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    const-string v1, "AI_LLS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->AI_LLS:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    const-string v1, "AI_IST"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->AI_IST:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    const-string v1, "AI_CUD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->AI_CUD:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->$values()[Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->$VALUES:[Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->mIntValue:I

    return-void
.end method

.method public static toEnumVal(I)Lcom/motorola/camera/mcf/Mcf$ShotSlot;
    .locals 5

    invoke-static {}, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->values()[Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->mIntValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/motorola/camera/mcf/Mcf;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received invalid ShotSlot int: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->INVALID:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$ShotSlot;
    .locals 1

    const-class v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mcf/Mcf$ShotSlot;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->$VALUES:[Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    invoke-virtual {v0}, [Lcom/motorola/camera/mcf/Mcf$ShotSlot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    return-object v0
.end method


# virtual methods
.method public isAiCUD()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->AI_CUD:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAiIST()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->AI_IST:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAiLLS()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->AI_LLS:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBestShot()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->BESTSHOT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isComposition()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->COMPOSITION:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDefault()Z
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$ShotSlot;->DEFAULT:Lcom/motorola/camera/mcf/Mcf$ShotSlot;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
