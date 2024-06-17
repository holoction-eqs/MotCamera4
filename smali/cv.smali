.class final Lcv;
.super Lct;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lct;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/Object;J)Lcj;
    .locals 0

    invoke-static {p0, p1, p2}, Lep;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcj;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcv;->b(Ljava/lang/Object;J)Lcj;

    move-result-object p0

    invoke-interface {p0}, Lcj;->b()V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 3

    .line 2
    invoke-static {p1, p3, p4}, Lcv;->b(Ljava/lang/Object;J)Lcj;

    move-result-object p0

    invoke-static {p2, p3, p4}, Lcv;->b(Ljava/lang/Object;J)Lcj;

    move-result-object p2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    invoke-interface {p0}, Lcj;->a()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    invoke-interface {p0, v1}, Lcj;->a(I)Lcj;

    move-result-object p0

    :cond_0
    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    move-object p2, p0

    :cond_2
    invoke-static {p1, p3, p4, p2}, Lep;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
