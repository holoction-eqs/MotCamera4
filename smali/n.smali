.class public final Ln;
.super Lby$d;
.source "SourceFile"


# static fields
.field public static final c:Ln;

.field private static volatile f:Lds;


# instance fields
.field public a:I

.field public b:I

.field private e:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln;

    invoke-direct {v0}, Ln;-><init>()V

    sput-object v0, Ln;->c:Ln;

    const-class v1, Ln;

    invoke-static {v1, v0}, Lby;->a(Ljava/lang/Class;Lby;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lby$d;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Ln;->e:B

    return-void
.end method

.method public static a()Lby$a;
    .locals 1

    .line 1
    sget-object v0, Ln;->c:Ln;

    invoke-virtual {v0}, Lby;->m()Lby$b;

    move-result-object v0

    check-cast v0, Lby$a;

    return-object v0
.end method

.method private final a(Ll;)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Ln;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Ln;->a:I

    iget p1, p1, Ll;->h:I

    iput p1, p0, Ln;->b:I

    return-void
.end method

.method public static synthetic a(Ln;Ll;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ln;->a(Ll;)V

    return-void
.end method

.method public static synthetic b()Ln;
    .locals 1

    sget-object v0, Ln;->c:Ln;

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2
    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Ln;->f:Lds;

    if-nez p0, :cond_1

    const-class p1, Ln;

    monitor-enter p1

    :try_start_0
    sget-object p0, Ln;->f:Lds;

    if-nez p0, :cond_0

    new-instance p0, Las;

    sget-object p2, Ln;->c:Ln;

    invoke-direct {p0, p2}, Las;-><init>(Lby;)V

    sput-object p0, Ln;->f:Lds;

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
    sget-object p0, Ln;->c:Ln;

    return-object p0

    :pswitch_2
    new-instance p0, Lby$a;

    invoke-direct {p0, v1}, Lby$a;-><init>(B)V

    return-object p0

    :pswitch_3
    new-instance p0, Ln;

    invoke-direct {p0}, Ln;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "a"

    const-string p1, "b"

    invoke-static {}, Ll;->b()Lcf;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000c\u0000"

    sget-object p2, Ln;->c:Ln;

    invoke-static {p2, p1, p0}, Lby;->a(Ldh;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    if-nez p2, :cond_2

    move v0, v1

    :cond_2
    int-to-byte p1, v0

    iput-byte p1, p0, Ln;->e:B

    const/4 p0, 0x0

    return-object p0

    :pswitch_6
    iget-byte p0, p0, Ln;->e:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

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
