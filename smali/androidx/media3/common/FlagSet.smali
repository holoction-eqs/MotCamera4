.class public final Landroidx/media3/common/FlagSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final flags:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/util/SparseBooleanArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/common/FlagSet;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/common/FlagSet;

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v1, v3, :cond_5

    invoke-virtual {p0}, Landroidx/media3/common/FlagSet;->size()I

    move-result v1

    invoke-virtual {p1}, Landroidx/media3/common/FlagSet;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/FlagSet;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {p0, v1}, Landroidx/media3/common/FlagSet;->get(I)I

    move-result v3

    invoke-virtual {p1, v1}, Landroidx/media3/common/FlagSet;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    iget-object p0, p0, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    iget-object p1, p1, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final get(I)I
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/common/FlagSet;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/adobe/xmp/XMPUtils;->checkIndex(II)V

    iget-object p0, p0, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/FlagSet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/FlagSet;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0, v1}, Landroidx/media3/common/FlagSet;->get(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    iget-object p0, p0, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->hashCode()I

    move-result p0

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/FlagSet;->flags:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    return p0
.end method
