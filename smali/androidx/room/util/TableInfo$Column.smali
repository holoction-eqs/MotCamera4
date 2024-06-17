.class public final Landroidx/room/util/TableInfo$Column;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final affinity:I

.field public final createdFrom:I

.field public final defaultValue:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final notNull:Z

.field public final primaryKeyPosition:I

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    iput-object p4, p0, Landroidx/room/util/TableInfo$Column;->type:Ljava/lang/String;

    iput-boolean p6, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    iput p1, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    iput-object p5, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    iput p2, p0, Landroidx/room/util/TableInfo$Column;->createdFrom:I

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "US"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "INT"

    invoke-static {p1, p2}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x3

    goto :goto_2

    :cond_0
    const-string p2, "CHAR"

    invoke-static {p1, p2}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "CLOB"

    invoke-static {p1, p2}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "TEXT"

    invoke-static {p1, p2}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, "BLOB"

    invoke-static {p1, p2}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x5

    goto :goto_2

    :cond_2
    const-string p2, "REAL"

    invoke-static {p1, p2}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "FLOA"

    invoke-static {p1, p2}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    const-string p2, "DOUB"

    invoke-static {p1, p2}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    :goto_0
    const/4 p1, 0x4

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x2

    :goto_2
    iput p1, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/room/util/TableInfo$Column;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/room/util/TableInfo$Column;

    iget v1, p1, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    iget v3, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p1, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    iget-object v3, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    iget-boolean v3, p1, Landroidx/room/util/TableInfo$Column;->notNull:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p1, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    iget v3, p1, Landroidx/room/util/TableInfo$Column;->createdFrom:I

    const/4 v4, 0x2

    iget-object v5, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    iget v6, p0, Landroidx/room/util/TableInfo$Column;->createdFrom:I

    if-ne v6, v0, :cond_5

    if-ne v3, v4, :cond_5

    if-eqz v5, :cond_5

    invoke-static {v5, v1}, Lcom/adobe/xmp/XMPMetaFactory$1;->defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    return v2

    :cond_5
    if-ne v6, v4, :cond_6

    if-ne v3, v0, :cond_6

    if-eqz v1, :cond_6

    invoke-static {v1, v5}, Lcom/adobe/xmp/XMPMetaFactory$1;->defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    return v2

    :cond_6
    if-eqz v6, :cond_9

    if-ne v6, v3, :cond_9

    if-eqz v5, :cond_7

    invoke-static {v5, v1}, Lcom/adobe/xmp/XMPMetaFactory$1;->defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_7
    if-eqz v1, :cond_8

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_8
    move v1, v2

    :goto_1
    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget p0, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    iget p1, p1, Landroidx/room/util/TableInfo$Column;->affinity:I

    if-ne p0, p1, :cond_a

    goto :goto_2

    :cond_a
    move v0, v2

    :goto_2
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Column{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/room/util/TableInfo$Column;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', affinity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\', notNull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", primaryKeyPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "undefined"

    :cond_0
    const-string v1, "\'}"

    invoke-static {v0, p0, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
