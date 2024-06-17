.class public abstract Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# instance fields
.field public final data:Ljava/util/LinkedHashMap;

.field public final idGenerator:Ljava/util/concurrent/atomic/AtomicLong;

.field public final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->data:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->idGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    invoke-virtual {p0}, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/#"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    return-void
.end method


# virtual methods
.method public abstract columnNames()[Ljava/lang/String;
.end method

.method public abstract dataFromValues(Landroid/content/ContentValues;)Ljava/lang/Object;
.end method

.method public abstract dataToColumns(Ljava/lang/Object;)[Ljava/lang/Object;
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const-string p3, "Query: Unknown URI: "

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-ne p2, v1, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->data:Ljava/util/LinkedHashMap;

    monitor-enter p2

    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    if-eq v2, v1, :cond_3

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    goto :goto_2

    :cond_2
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ExceptionsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->data:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object p3, p0, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->data:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p0, p3}, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->deleteData(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    monitor-exit p2

    return v0

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Only all or single entities are deletable"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract deleteData(Ljava/lang/Object;)V
.end method

.method public abstract getAuthority()Ljava/lang/String;
.end method

.method public abstract getEndpoint()Ljava/lang/String;
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const-string p0, "uri"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->dataFromValues(Landroid/content/ContentValues;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->idGenerator:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iget-object v2, p0, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->data:Ljava/util/LinkedHashMap;

    monitor-enter v2

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object p0, p0, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->data:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public final onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    const-string p2, "Query: Unknown URI: "

    const-string p3, "uri"

    invoke-static {p1, p3}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->data:Ljava/util/LinkedHashMap;

    monitor-enter p3

    :try_start_0
    iget-object p4, p0, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p4

    const/4 p5, 0x1

    const/4 v0, 0x2

    if-eq p4, p5, :cond_1

    if-eq p4, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ExceptionsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->data:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    :goto_0
    new-instance p2, Lkotlin/jvm/internal/SpreadBuilder;

    invoke-direct {p2, v0}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    const-string p4, "id"

    invoke-virtual {p2, p4}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->columnNames()[Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p4

    new-array p4, p4, [Ljava/lang/String;

    invoke-virtual {p2, p4}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    new-instance p4, Landroid/database/MatrixCursor;

    invoke-direct {p4, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object p2, p0, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->data:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/motorola/camera/background/provider/memory/InMemoryContentProvider;->dataToColumns(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    new-instance p5, Lkotlin/jvm/internal/SpreadBuilder;

    invoke-direct {p5, v0}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p5, v1}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {p5, p2}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {p5}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p5, p2}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    monitor-exit p3

    return-object p4

    :catchall_0
    move-exception p0

    monitor-exit p3

    throw p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p0, "uri"

    invoke-static {p1, p0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Update is not allowed on this provider"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
