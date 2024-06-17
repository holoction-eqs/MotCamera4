.class public final Lp;
.super Lby;
.source "SourceFile"

# interfaces
.implements Ldj;


# static fields
.field public static final c:Lp;

.field private static volatile d:Lds;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp;

    invoke-direct {v0}, Lp;-><init>()V

    sput-object v0, Lp;->c:Lp;

    const-class v1, Lp;

    invoke-static {v1, v0}, Lby;->a(Ljava/lang/Class;Lby;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lby;-><init>()V

    return-void
.end method

.method public static a()Lby$b;
    .locals 1

    .line 1
    sget-object v0, Lp;->c:Lp;

    invoke-virtual {v0}, Lby;->m()Lby$b;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lp;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lp;->b(I)V

    return-void
.end method

.method public static synthetic b()Lp;
    .locals 1

    .line 1
    sget-object v0, Lp;->c:Lp;

    return-object v0
.end method

.method private final b(I)V
    .locals 1

    .line 2
    iget v0, p0, Lp;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp;->a:I

    iput p1, p0, Lp;->b:I

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    const/4 p0, 0x1

    sub-int/2addr p1, p0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lp;->d:Lds;

    if-nez p0, :cond_1

    const-class p1, Lp;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lp;->d:Lds;

    if-nez p0, :cond_0

    new-instance p0, Las;

    sget-object p2, Lp;->c:Lp;

    invoke-direct {p0, p2}, Las;-><init>(Lby;)V

    sput-object p0, Lp;->d:Lds;

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
    sget-object p0, Lp;->c:Lp;

    return-object p0

    :pswitch_2
    new-instance p0, Lby$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lby$b;-><init>(B)V

    return-object p0

    :pswitch_3
    new-instance p0, Lp;

    invoke-direct {p0}, Lp;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "a"

    const-string p1, "b"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0004\u0000"

    sget-object p2, Lp;->c:Lp;

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
