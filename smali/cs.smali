.class public Lcs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lba;

.field public volatile b:Ldh;

.field public volatile c:Lba;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lbp;->a()Lbp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldh;)Ldh;
    .locals 1

    iget-object v0, p0, Lcs;->b:Ldh;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcs;->b:Ldh;

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcs;->b:Ldh;

    sget-object v0, Lba;->a:Lba;

    iput-object v0, p0, Lcs;->c:Lba;
    :try_end_1
    .catch Lcm; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcs;->b:Ldh;

    sget-object p1, Lba;->a:Lba;

    iput-object p1, p0, Lcs;->c:Lba;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-object p0, p0, Lcs;->b:Ldh;

    return-object p0
.end method

.method public final b()Lba;
    .locals 1

    iget-object v0, p0, Lcs;->c:Lba;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcs;->c:Lba;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcs;->c:Lba;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcs;->c:Lba;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcs;->b:Ldh;

    if-nez v0, :cond_2

    sget-object v0, Lba;->a:Lba;

    :goto_0
    iput-object v0, p0, Lcs;->c:Lba;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcs;->b:Ldh;

    invoke-interface {v0}, Ldh;->i()Lba;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcs;->c:Lba;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcs;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcs;

    iget-object v0, p0, Lcs;->b:Ldh;

    iget-object v1, p1, Lcs;->b:Ldh;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcs;->b()Lba;

    move-result-object p0

    invoke-virtual {p1}, Lcs;->b()Lba;

    move-result-object p1

    invoke-virtual {p0, p1}, Lba;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ldj;->r()Ldh;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcs;->a(Ldh;)Ldh;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    invoke-interface {v1}, Ldj;->r()Ldh;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcs;->a(Ldh;)Ldh;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
