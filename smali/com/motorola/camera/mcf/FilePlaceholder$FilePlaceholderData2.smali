.class public final Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/mcf/FilePlaceholder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FilePlaceholderData2"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\r\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0008J$\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u000fJ\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;",
        "",
        "id",
        "",
        "fd",
        "",
        "(JLjava/lang/Integer;)V",
        "getFd",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getId",
        "()J",
        "component1",
        "component2",
        "copy",
        "(JLjava/lang/Integer;)Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "MotCamera-MCF_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final fd:Ljava/lang/Integer;

.field private final id:J


# direct methods
.method public constructor <init>(JLjava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;->id:J

    iput-object p3, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;->fd:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;JLjava/lang/Integer;ILjava/lang/Object;)Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;->id:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;->fd:Ljava/lang/Integer;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;->copy(JLjava/lang/Integer;)Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;->id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;->fd:Ljava/lang/Integer;

    return-object p0
.end method

.method public final copy(JLjava/lang/Integer;)Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;
    .locals 0

    new-instance p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;-><init>(JLjava/lang/Integer;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;

    iget-wide v3, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;->id:J

    iget-wide v5, p1, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;->fd:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;->fd:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFd()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;->fd:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;->id:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;->fd:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;->id:J

    iget-object p0, p0, Lcom/motorola/camera/mcf/FilePlaceholder$FilePlaceholderData2;->fd:Ljava/lang/Integer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FilePlaceholderData2(id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", fd="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
