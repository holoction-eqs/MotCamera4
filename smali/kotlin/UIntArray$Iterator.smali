.class public Lkotlin/UIntArray$Iterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I

.field public final array:Ljava/lang/Object;

.field public index:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    iput-object p1, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    const-string v0, "array"

    .line 2
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    const-string v0, "array"

    .line 3
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([J)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    const-string v0, "array"

    .line 4
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    const-string v0, "array"

    .line 5
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([S)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    const-string v0, "array"

    .line 6
    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    iget v0, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    check-cast v3, Lkotlin/collections/AbstractList;

    invoke-virtual {v3}, Lkotlin/collections/AbstractCollection;->getSize()I

    move-result v0

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :pswitch_1
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    check-cast v3, [S

    array-length v0, v3

    if-ge p0, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    :pswitch_2
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    check-cast v3, [J

    array-length v0, v3

    if-ge p0, v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1

    :pswitch_3
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    check-cast v3, [B

    array-length v0, v3

    if-ge p0, v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    return v1

    :pswitch_4
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    check-cast v3, Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-ge p0, v0, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    return v1

    :pswitch_5
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p0, v0, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    return v1

    :pswitch_6
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    check-cast v3, [I

    array-length v0, v3

    if-ge p0, v0, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    return v1

    :goto_7
    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    check-cast v3, [Ljava/lang/Object;

    array-length v0, v3

    if-ge p0, v0, :cond_7

    goto :goto_8

    :cond_7
    move v1, v2

    :goto_8
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    iget-object v1, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lkotlin/UIntArray$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast v1, Lkotlin/collections/AbstractList;

    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/UIntArray$Iterator;->index:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_1
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    check-cast v1, [S

    array-length v2, v1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/UIntArray$Iterator;->index:I

    aget-short p0, v1, v0

    new-instance v0, Lkotlin/UShort;

    invoke-direct {v0, p0}, Lkotlin/UShort;-><init>(S)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    check-cast v1, [J

    array-length v2, v1

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/UIntArray$Iterator;->index:I

    aget-wide v0, v1, v0

    new-instance p0, Lkotlin/ULong;

    invoke-direct {p0, v0, v1}, Lkotlin/ULong;-><init>(J)V

    return-object p0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    check-cast v1, [B

    array-length v2, v1

    if-ge v0, v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/UIntArray$Iterator;->index:I

    aget-byte p0, v1, v0

    new-instance v0, Lkotlin/UByte;

    invoke-direct {v0, p0}, Lkotlin/UByte;-><init>(B)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    check-cast v1, Landroidx/preference/PreferenceGroup;

    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/UIntArray$Iterator;->index:I

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    const-string v0, "getPreference(index++)"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_5
    check-cast v1, Landroid/view/ViewGroup;

    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/UIntArray$Iterator;->index:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :pswitch_6
    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    check-cast v1, [I

    array-length v2, v1

    if-ge v0, v2, :cond_5

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/UIntArray$Iterator;->index:I

    aget p0, v1, v0

    new-instance v0, Lkotlin/UInt;

    invoke-direct {v0, p0}, Lkotlin/UInt;-><init>(I)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    iget p0, p0, Lkotlin/UIntArray$Iterator;->index:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    :try_start_0
    check-cast v1, [Ljava/lang/Object;

    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/UIntArray$Iterator;->index:I

    aget-object p0, v1, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    iget v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkotlin/UIntArray$Iterator;->index:I

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 3

    iget v0, p0, Lkotlin/UIntArray$Iterator;->$r8$classId:I

    iget-object v1, p0, Lkotlin/UIntArray$Iterator;->array:Ljava/lang/Object;

    const-string v2, "Operation is not supported for read-only collection"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    check-cast v1, Landroidx/preference/PreferenceGroup;

    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    :pswitch_5
    check-cast v1, Landroid/view/ViewGroup;

    iget v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/UIntArray$Iterator;->index:I

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void

    :pswitch_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
