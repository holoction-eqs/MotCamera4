.class public final Lcom/motorola/camera/mcf/Mcf$CapKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mTag:I

.field public final mType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/mcf/Mcf$CapKey;->mType:Ljava/lang/Class;

    iput p1, p0, Lcom/motorola/camera/mcf/Mcf$CapKey;->mTag:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget p0, p0, Lcom/motorola/camera/mcf/Mcf$CapKey;->mTag:I

    if-eq p0, v2, :cond_1

    goto :goto_1

    :cond_1
    instance-of v2, p1, Lcom/motorola/camera/mcf/Mcf$CapKey;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/motorola/camera/mcf/Mcf$CapKey;

    iget p1, p1, Lcom/motorola/camera/mcf/Mcf$CapKey;->mTag:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/Mcf$CapKey;->mTag:I

    return p0
.end method
