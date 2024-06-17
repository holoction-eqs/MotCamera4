.class public Ldc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac;


# instance fields
.field public final a:Ldb;

.field public final b:Lac;


# direct methods
.method public constructor <init>(Ldb;Lac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldc;->a:Ldb;

    iput-object p2, p0, Ldc;->b:Lac;

    return-void
.end method

.method public static a(Ldb;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Ldb;->a:Lex;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lbt;->a(Lex;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Ldb;->c:Lex;

    const/4 v0, 0x2

    invoke-static {p0, v0, p2}, Lbt;->a(Lex;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static a(Landroid/content/Context;Ldb;Lx;)Lab;
    .locals 1

    .line 2
    new-instance v0, Lae;

    invoke-direct {v0, p0, p1, p2}, Lae;-><init>(Landroid/content/Context;Ldb;Lx;)V

    return-object v0
.end method

.method public static a(Lbl;Ldb;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 4
    iget-object v0, p1, Ldb;->a:Lex;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lbt;->a(Lbl;Lex;ILjava/lang/Object;)V

    iget-object p1, p1, Ldb;->c:Lex;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lbt;->a(Lbl;Lex;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Laf$a;)V
    .locals 0

    .line 3
    iget-object p1, p0, Ldc;->a:Ldb;

    iget-object p0, p0, Ldc;->b:Lac;

    invoke-virtual {p1, p0}, Ldb;->d(Lac;)V

    return-void
.end method
