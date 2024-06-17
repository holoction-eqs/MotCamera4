.class final Lbc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lba;

    check-cast p2, Lba;

    invoke-virtual {p1}, Lba;->iterator()Ljava/util/Iterator;

    move-result-object p0

    check-cast p0, Lbf;

    invoke-virtual {p2}, Lba;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lbf;

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lbf;->a()B

    move-result v1

    invoke-static {v1}, Lba;->a(B)I

    move-result v1

    invoke-interface {v0}, Lbf;->a()B

    move-result v2

    invoke-static {v2}, Lba;->a(B)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_1
    invoke-virtual {p1}, Lba;->a()I

    move-result p0

    invoke-virtual {p2}, Lba;->a()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
