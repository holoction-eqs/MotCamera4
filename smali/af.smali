.class public final Laf;
.super Lby;
.source "SourceFile"

# interfaces
.implements Ldj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laf$a;
    }
.end annotation


# static fields
.field public static final f:Laf;

.field private static volatile i:Lds;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Laf;

    invoke-direct {v0}, Laf;-><init>()V

    sput-object v0, Laf;->f:Laf;

    const-class v1, Laf;

    invoke-static {v1, v0}, Lby;->a(Ljava/lang/Class;Lby;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lby;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Laf;->b:Ljava/lang/String;

    iput-object v0, p0, Laf;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Laf;->d:I

    iput v0, p0, Laf;->e:I

    return-void
.end method

.method private final a(Laf$a;)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Laf;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Laf;->a:I

    iget p1, p1, Laf$a;->h:I

    iput p1, p0, Laf;->d:I

    return-void
.end method

.method public static synthetic a(Laf;Laf$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Laf;->a(Laf$a;)V

    return-void
.end method

.method public static synthetic a(Laf;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Laf;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Laf;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Laf;->a:I

    iput-object p1, p0, Laf;->b:Ljava/lang/String;

    return-void
.end method

.method private final b(Laf$a;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Laf;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Laf;->a:I

    iget p1, p1, Laf$a;->h:I

    iput p1, p0, Laf;->e:I

    return-void
.end method

.method public static synthetic b(Laf;Laf$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Laf;->b(Laf$a;)V

    return-void
.end method

.method public static synthetic b(Laf;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Laf;->b(Ljava/lang/String;)V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Laf;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Laf;->a:I

    iput-object p1, p0, Laf;->c:Ljava/lang/String;

    return-void
.end method

.method public static d()Lby$b;
    .locals 1

    sget-object v0, Laf;->f:Laf;

    invoke-virtual {v0}, Lby;->m()Lby$b;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic e()Laf;
    .locals 1

    sget-object v0, Laf;->f:Laf;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 p0, 0x1

    sub-int/2addr p1, p0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Laf;->i:Lds;

    if-nez p0, :cond_1

    const-class p1, Laf;

    monitor-enter p1

    :try_start_0
    sget-object p0, Laf;->i:Lds;

    if-nez p0, :cond_0

    new-instance p0, Las;

    sget-object p2, Laf;->f:Laf;

    invoke-direct {p0, p2}, Las;-><init>(Lby;)V

    sput-object p0, Laf;->i:Lds;

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    :pswitch_1
    sget-object p0, Laf;->f:Laf;

    return-object p0

    :pswitch_2
    new-instance p0, Lby$b;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lby$b;-><init>(BF)V

    return-object p0

    :pswitch_3
    new-instance p0, Laf;

    invoke-direct {p0}, Laf;-><init>()V

    return-object p0

    :pswitch_4
    const-string v0, "a"

    const-string v1, "b"

    const-string v2, "c"

    const-string v3, "d"

    invoke-static {}, Laf$a;->b()Lcf;

    move-result-object v4

    const-string v5, "e"

    invoke-static {}, Laf$a;->b()Lcf;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0008\u0000\u0002\u0008\u0001\u0003\u000c\u0002\u0004\u000c\u0003"

    sget-object p2, Laf;->f:Laf;

    invoke-static {p2, p1, p0}, Lby;->a(Ldh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    const/4 p0, 0x0

    return-object p0

    :pswitch_6
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

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

.method public final a()Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Laf;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Laf$a;
    .locals 0

    .line 1
    iget p0, p0, Laf;->d:I

    invoke-static {p0}, Laf$a;->a(I)Laf$a;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Laf$a;->a:Laf$a;

    :cond_0
    return-object p0
.end method

.method public final c()Laf$a;
    .locals 0

    iget p0, p0, Laf;->e:I

    invoke-static {p0}, Laf$a;->a(I)Laf$a;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Laf$a;->a:Laf$a;

    :cond_0
    return-object p0
.end method
