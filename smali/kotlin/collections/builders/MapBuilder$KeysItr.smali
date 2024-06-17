.class public final Lkotlin/collections/builders/MapBuilder$KeysItr;
.super Lkotlin/collections/builders/MapBuilder$Itr;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public constructor <init>(Lkotlin/collections/builders/MapBuilder;I)V
    .locals 2

    iput p2, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->$r8$classId:I

    const/4 v0, 0x1

    const-string v1, "map"

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder$Itr;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    return-void

    :cond_0
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder$Itr;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    return-void

    :cond_1
    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlin/collections/builders/MapBuilder$Itr;-><init>(Lkotlin/collections/builders/MapBuilder;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlin/collections/builders/MapBuilder$KeysItr;->$r8$classId:I

    iget-object v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->map:Lkotlin/collections/builders/MapBuilder;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    iget v2, v1, Lkotlin/collections/builders/MapBuilder;->length:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    iput v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    new-instance v2, Lkotlin/collections/builders/MapBuilder$EntryRef;

    invoke-direct {v2, v1, v0}, Lkotlin/collections/builders/MapBuilder$EntryRef;-><init>(Lkotlin/collections/builders/MapBuilder;I)V

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$Itr;->initNext$kotlin_stdlib()V

    return-object v2

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_1
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    iget v2, v1, Lkotlin/collections/builders/MapBuilder;->length:I

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    iput v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    iget-object v1, v1, Lkotlin/collections/builders/MapBuilder;->keysArray:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$Itr;->initNext$kotlin_stdlib()V

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :goto_0
    iget v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    iget v2, v1, Lkotlin/collections/builders/MapBuilder;->length:I

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlin/collections/builders/MapBuilder$Itr;->index:I

    iput v0, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    iget-object v0, v1, Lkotlin/collections/builders/MapBuilder;->valuesArray:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lkotlin/collections/builders/MapBuilder$Itr;->lastIndex:I

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lkotlin/collections/builders/MapBuilder$Itr;->initNext$kotlin_stdlib()V

    return-object v0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
