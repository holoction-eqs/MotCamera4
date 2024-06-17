.class final Lcx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldv;


# static fields
.field private static final b:Ldi;


# instance fields
.field private final a:Ldi;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lda;

    invoke-direct {v0}, Lda;-><init>()V

    sput-object v0, Lcx;->b:Ldi;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcz;

    const/4 v1, 0x2

    new-array v1, v1, [Ldi;

    const/4 v2, 0x0

    sget-object v3, Lbz;->a:Lbz;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcx;->a()Ldi;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcz;-><init>([Ldi;)V

    invoke-direct {p0, v0}, Lcx;-><init>(Ldi;)V

    return-void
.end method

.method private constructor <init>(Ldi;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcc;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldi;

    iput-object p1, p0, Lcx;->a:Ldi;

    return-void
.end method

.method private static a()Ldi;
    .locals 4

    .line 1
    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcx;->b:Ldi;

    return-object v0
.end method

.method private static a(Ldf;)Z
    .locals 1

    .line 3
    invoke-interface {p0}, Ldf;->a()I

    move-result p0

    sget v0, Lby$e;->h:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ldw;
    .locals 6

    .line 2
    invoke-static {p1}, Ldy;->a(Ljava/lang/Class;)V

    iget-object p0, p0, Lcx;->a:Ldi;

    invoke-interface {p0, p1}, Ldi;->b(Ljava/lang/Class;)Ldf;

    move-result-object v0

    invoke-interface {v0}, Ldf;->b()Z

    move-result p0

    const-class v1, Lby;

    if-eqz p0, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ldy;->c:Lem;

    sget-object p1, Lbq;->a:Lbr;

    invoke-interface {v0}, Ldf;->c()Ldh;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ldl;->a(Lem;Lbr;Ldh;)Ldl;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ldy;->a:Lem;

    invoke-static {}, Lbq;->a()Lbr;

    move-result-object p1

    invoke-interface {v0}, Ldf;->c()Ldh;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ldl;->a(Lem;Lbr;Ldh;)Ldl;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v0}, Lcx;->a(Ldf;)Z

    move-result p0

    sget-object v1, Ldq;->b:Ldn;

    sget-object v2, Lct;->b:Lct;

    sget-object v3, Ldy;->c:Lem;

    if-eqz p0, :cond_2

    sget-object v4, Lbq;->a:Lbr;

    sget-object v5, Ldg;->b:Ldd;

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    sget-object v5, Ldg;->b:Ldd;

    invoke-static/range {v0 .. v5}, Ldm;->a(Ldf;Ldn;Lct;Lem;Lbr;Ldd;)Ldm;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {v0}, Lcx;->a(Ldf;)Z

    move-result p0

    sget-object v1, Ldq;->a:Ldn;

    sget-object v2, Lct;->a:Lct;

    if-eqz p0, :cond_4

    sget-object v3, Ldy;->a:Lem;

    invoke-static {}, Lbq;->a()Lbr;

    move-result-object v4

    sget-object v5, Ldg;->a:Ldd;

    invoke-static/range {v0 .. v5}, Ldm;->a(Ldf;Ldn;Lct;Lem;Lbr;Ldd;)Ldm;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object v3, Ldy;->b:Lem;

    const/4 v4, 0x0

    sget-object v5, Ldg;->a:Ldd;

    :goto_0
    invoke-static/range {v0 .. v5}, Ldm;->a(Ldf;Ldn;Lct;Lem;Lbr;Ldd;)Ldm;

    move-result-object p0

    return-object p0
.end method
