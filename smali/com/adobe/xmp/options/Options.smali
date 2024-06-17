.class public abstract Lcom/adobe/xmp/options/Options;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public options:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/xmp/options/Options;->options:I

    invoke-virtual {p0, p1}, Lcom/adobe/xmp/options/Options;->assertOptionsValid(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/adobe/xmp/options/Options;->assertOptionsValid(I)V

    iput p1, p0, Lcom/adobe/xmp/options/Options;->options:I

    return-void
.end method


# virtual methods
.method public assertConsistency(I)V
    .locals 0

    return-void
.end method

.method public final assertOptionsValid(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/adobe/xmp/options/Options;->getValidOptions()I

    move-result v0

    not-int v0, v0

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/adobe/xmp/options/Options;->assertConsistency(I)V

    return-void

    :cond_0
    new-instance p0, Lcom/adobe/xmp/XMPException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "The option bit(s) 0x"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " are invalid!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x67

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/adobe/xmp/options/Options;->options:I

    check-cast p1, Lcom/adobe/xmp/options/Options;

    iget p1, p1, Lcom/adobe/xmp/options/Options;->options:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getOption(I)Z
    .locals 0

    iget p0, p0, Lcom/adobe/xmp/options/Options;->options:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract getValidOptions()I
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/adobe/xmp/options/Options;->options:I

    return p0
.end method

.method public final setOption(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/adobe/xmp/options/Options;->options:I

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/adobe/xmp/options/Options;->options:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/adobe/xmp/options/Options;->options:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/adobe/xmp/options/Options;->options:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
