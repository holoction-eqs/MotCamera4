.class public final Lae;
.super Lk;
.source "SourceFile"

# interfaces
.implements Lab;
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ldb;

.field public b:I

.field public c:Lr$a;

.field public d:Laf$a;

.field private final e:Landroid/os/Handler;

.field private final f:Landroid/content/Context;

.field private final g:Lx;

.field private h:I

.field private i:Ld;

.field private j:Lf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldb;Lx;)V
    .locals 2

    invoke-direct {p0}, Lk;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lae;->e:Landroid/os/Handler;

    const/4 v0, 0x1

    iput v0, p0, Lae;->h:I

    sget-object v0, Laf$a;->a:Laf$a;

    iput-object v0, p0, Lae;->d:Laf$a;

    iput-object p1, p0, Lae;->f:Landroid/content/Context;

    iput-object p2, p0, Lae;->a:Ldb;

    iput-object p3, p0, Lae;->g:Lx;

    return-void
.end method

.method private final b(Z)V
    .locals 5

    .line 2
    invoke-static {}, Lat;->a()V

    iget v0, p0, Lae;->h:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-nez v4, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    const/4 v4, 0x7

    if-ne v0, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v3}, Lae;->a(I)V

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lae;->i()V

    return-void

    :cond_4
    iget-object p1, p0, Lae;->g:Lx;

    new-instance v0, Lal;

    invoke-direct {v0, p0}, Lal;-><init>(Lae;)V

    invoke-virtual {p1, v0}, Lx;->a(Laa;)V

    return-void

    :cond_5
    :goto_2
    const-string p0, "Attempting to bind service when already bound."

    invoke-static {v2, p0}, Lat;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private static b(I)Z
    .locals 1

    .line 4
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static c(I)Z
    .locals 1

    .line 2
    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lae;->b(Z)V

    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 2
    iget v0, p0, Lae;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Transitioning from state %s to %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget v0, p0, Lae;->h:I

    iput p1, p0, Lae;->h:I

    invoke-static {p1}, Lae;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lae;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lae;->a:Ldb;

    invoke-virtual {v1}, Ldb;->a()V

    :cond_0
    invoke-static {p1}, Lae;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lae;->c(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lae;->a:Ldb;

    invoke-virtual {p0}, Ldb;->b()V

    :cond_1
    return-void
.end method

.method public final a([B)V
    .locals 2

    .line 3
    invoke-static {}, Lat;->a()V

    invoke-virtual {p0}, Lae;->g()Z

    move-result v0

    const-string v1, "Attempted to use lensServiceSession before ready."

    invoke-static {v0, v1}, Lat;->a(ZLjava/lang/String;)V

    iget-object p0, p0, Lae;->j:Lf;

    invoke-static {p0}, Lat;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf;

    invoke-interface {p0, p1}, Lf;->a([B)V

    return-void
.end method

.method public final a([BLj;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lae;->e:Landroid/os/Handler;

    new-instance v1, Lad;

    invoke-direct {v1, p0, p1, p2}, Lad;-><init>(Lae;[BLj;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Z)Z
    .locals 4

    .line 5
    iget v0, p0, Lae;->h:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lae;->b(Z)V

    return v2

    :cond_3
    return v3
.end method

.method public final b()V
    .locals 8

    .line 1
    invoke-static {}, Lat;->a()V

    iget v0, p0, Lae;->h:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    const/4 v5, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Ln;->a()Lby$a;

    move-result-object v0

    sget-object v6, Ll;->d:Ll;

    invoke-virtual {v0, v6}, Lby$a;->a(Ll;)Lby$a;

    move-result-object v0

    invoke-virtual {v0}, Lby$b;->f()Ldh;

    move-result-object v0

    check-cast v0, Lby;

    check-cast v0, Ln;

    :try_start_0
    iget-object v6, p0, Lae;->j:Lf;

    invoke-static {v6}, Lat;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lf;

    invoke-virtual {v0}, Lan;->j()[B

    move-result-object v0

    invoke-interface {v6, v0}, Lf;->a([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v6, "LensServiceConnImpl"

    const-string v7, "Unable to end Lens service session."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iput-object v5, p0, Lae;->j:Lf;

    iput v2, p0, Lae;->b:I

    iput-object v5, p0, Lae;->c:Lr$a;

    :cond_2
    iget v0, p0, Lae;->h:I

    const/4 v6, 0x3

    if-eq v0, v6, :cond_3

    if-eq v0, v4, :cond_3

    const/4 v4, 0x6

    if-eq v0, v4, :cond_3

    if-ne v0, v1, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    if-eqz v2, :cond_5

    iget-object v0, p0, Lae;->f:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v5, p0, Lae;->i:Ld;

    :cond_5
    sget-object v0, Laf$a;->a:Laf$a;

    iput-object v0, p0, Lae;->d:Laf$a;

    invoke-virtual {p0, v3}, Lae;->a(I)V

    return-void
.end method

.method public final b([BLj;)V
    .locals 2

    .line 3
    invoke-static {}, Lat;->a()V

    invoke-virtual {p0}, Lae;->g()Z

    move-result v0

    const-string v1, "Attempted to use lensServiceSession before ready."

    invoke-static {v0, v1}, Lat;->a(ZLjava/lang/String;)V

    iget-object p0, p0, Lae;->j:Lf;

    invoke-static {p0}, Lat;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf;

    invoke-interface {p0, p1, p2}, Lf;->a([BLj;)V

    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    invoke-static {}, Lat;->a()V

    invoke-virtual {p0}, Lae;->g()Z

    move-result v0

    const-string v1, "Attempted to handover when not ready."

    invoke-static {v0, v1}, Lat;->a(ZLjava/lang/String;)V

    invoke-static {}, Ln;->a()Lby$a;

    move-result-object v0

    sget-object v1, Ll;->b:Ll;

    invoke-virtual {v0, v1}, Lby$a;->a(Ll;)Lby$a;

    move-result-object v0

    sget-object v1, Lu;->a:Lbo;

    invoke-static {}, Lt;->a()Lby$b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lby$b;->a(Z)Lby$b;

    move-result-object v2

    invoke-virtual {v2}, Lby$b;->f()Ldh;

    move-result-object v2

    check-cast v2, Lby;

    check-cast v2, Lt;

    invoke-virtual {v0, v1, v2}, Lby$a;->a(Lbo;Ljava/lang/Object;)Lby$a;

    move-result-object v0

    invoke-virtual {v0}, Lby$b;->f()Ldh;

    move-result-object v0

    check-cast v0, Lby;

    check-cast v0, Ln;

    :try_start_0
    iget-object v1, p0, Lae;->j:Lf;

    invoke-static {v1}, Lat;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf;

    invoke-virtual {v0}, Lan;->j()[B

    move-result-object v0

    invoke-interface {v1, v0}, Lf;->a([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LensServiceConnImpl"

    const-string v2, "Unable to stop Lens service session."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-object v0, Laf$a;->e:Laf$a;

    iput-object v0, p0, Lae;->d:Laf$a;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lae;->a(I)V

    return-void
.end method

.method public final d()I
    .locals 2

    invoke-static {}, Lat;->a()V

    iget v0, p0, Lae;->h:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Attempted to use lensServiceSession before ready."

    invoke-static {v0, v1}, Lat;->a(ZLjava/lang/String;)V

    iget p0, p0, Lae;->b:I

    return p0
.end method

.method public final e()Lr$a;
    .locals 2

    invoke-static {}, Lat;->a()V

    iget v0, p0, Lae;->h:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Attempted to use ServerFlags before ready."

    invoke-static {v0, v1}, Lat;->a(ZLjava/lang/String;)V

    iget-object p0, p0, Lae;->c:Lr$a;

    return-object p0
.end method

.method public final f()Laf$a;
    .locals 2

    invoke-static {}, Lat;->a()V

    invoke-virtual {p0}, Lae;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lae;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "Attempted to use ServerFlags before ready or dead."

    invoke-static {v0, v1}, Lat;->a(ZLjava/lang/String;)V

    iget-object p0, p0, Lae;->d:Laf$a;

    return-object p0
.end method

.method public final g()Z
    .locals 0

    invoke-static {}, Lat;->a()V

    iget p0, p0, Lae;->h:I

    invoke-static {p0}, Lae;->b(I)Z

    move-result p0

    return p0
.end method

.method public final h()Z
    .locals 0

    invoke-static {}, Lat;->a()V

    iget p0, p0, Lae;->h:I

    invoke-static {p0}, Lae;->c(I)Z

    move-result p0

    return p0
.end method

.method public final i()V
    .locals 5

    const-string v0, "LensServiceConnImpl"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.apps.gsa.publicsearch.IPublicSearchService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x6

    :try_start_0
    iget-object v3, p0, Lae;->f:Landroid/content/Context;

    const/16 v4, 0x41

    invoke-virtual {v3, v1, p0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Unable to bind Lens service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Laf$a;->d:Laf$a;

    iput-object v1, p0, Lae;->d:Laf$a;

    invoke-virtual {p0, v2}, Lae;->a(I)V

    return-void

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lae;->a(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v3, "Unable to bind Lens service due to security exception."

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Laf$a;->d:Laf$a;

    iput-object v0, p0, Lae;->d:Laf$a;

    invoke-virtual {p0, v2}, Lae;->a(I)V

    return-void
.end method

.method public final j()Z
    .locals 1

    iget p0, p0, Lae;->h:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const-string p1, "LensServiceConnImpl"

    invoke-static {}, Lat;->a()V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.apps.gsa.publicsearch.IPublicSearchService"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Ld;

    if-eqz v2, :cond_1

    check-cast v1, Ld;

    goto :goto_0

    :cond_1
    new-instance v1, Lg;

    invoke-direct {v1, p2}, Lg;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iput-object v1, p0, Lae;->i:Ld;

    invoke-static {}, Ln;->a()Lby$a;

    move-result-object p2

    sget-object v1, Ll;->a:Ll;

    invoke-virtual {p2, v1}, Lby$a;->a(Ll;)Lby$a;

    move-result-object p2

    invoke-virtual {p2}, Lby$b;->f()Ldh;

    move-result-object p2

    check-cast p2, Lby;

    check-cast p2, Ln;

    invoke-static {}, Ln;->a()Lby$a;

    move-result-object v1

    sget-object v2, Ll;->f:Ll;

    invoke-virtual {v1, v2}, Lby$a;->a(Ll;)Lby$a;

    move-result-object v1

    sget-object v2, Lq;->a:Lbo;

    invoke-static {}, Lp;->a()Lby$b;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lby$b;->a(I)Lby$b;

    move-result-object v3

    invoke-virtual {v3}, Lby$b;->f()Ldh;

    move-result-object v3

    check-cast v3, Lby;

    check-cast v3, Lp;

    invoke-virtual {v1, v2, v3}, Lby$a;->a(Lbo;Ljava/lang/Object;)Lby$a;

    move-result-object v1

    invoke-virtual {v1}, Lby$b;->f()Ldh;

    move-result-object v1

    check-cast v1, Lby;

    check-cast v1, Ln;

    const/4 v2, 0x6

    :try_start_0
    iget-object v3, p0, Lae;->i:Ld;

    invoke-static {v3}, Lat;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld;

    const-string v4, "LENS_SERVICE_SESSION"

    invoke-interface {v3, v4, p0, v0}, Ld;->a(Ljava/lang/String;Lh;[B)Lf;

    move-result-object v0

    iput-object v0, p0, Lae;->j:Lf;

    if-nez v0, :cond_2

    const-string p2, "Failed to create a Lens service session."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Laf$a;->d:Laf$a;

    iput-object p2, p0, Lae;->d:Laf$a;

    invoke-virtual {p0, v2}, Lae;->a(I)V

    return-void

    :cond_2
    invoke-static {v0}, Lat;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf;

    invoke-virtual {p2}, Lan;->j()[B

    move-result-object p2

    invoke-interface {v0, p2}, Lf;->a([B)V

    iget-object p2, p0, Lae;->j:Lf;

    invoke-static {p2}, Lat;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf;

    invoke-virtual {v1}, Lan;->j()[B

    move-result-object v0

    invoke-interface {p2, v0}, Lf;->a([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const-string v0, "Unable to begin Lens service session."

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lae;->j:Lf;

    if-nez p1, :cond_3

    sget-object p1, Laf$a;->d:Laf$a;

    iput-object p1, p0, Lae;->d:Laf$a;

    invoke-virtual {p0, v2}, Lae;->a(I)V

    return-void

    :cond_3
    sget-object p1, Laf$a;->d:Laf$a;

    iput-object p1, p0, Lae;->d:Laf$a;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lae;->a(I)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    invoke-static {}, Lat;->a()V

    sget-object p1, Laf$a;->d:Laf$a;

    iput-object p1, p0, Lae;->d:Laf$a;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lae;->a(I)V

    return-void
.end method
