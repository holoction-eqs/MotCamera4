.class final Lbi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lbl;

.field private final b:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lbi;->b:[B

    invoke-static {p1}, Lbl;->a([B)Lbl;

    move-result-object p1

    iput-object p1, p0, Lbi;->a:Lbl;

    return-void
.end method


# virtual methods
.method public final a()Lba;
    .locals 1

    iget-object v0, p0, Lbi;->a:Lbl;

    invoke-virtual {v0}, Lbl;->i()V

    new-instance v0, Lbh;

    iget-object p0, p0, Lbi;->b:[B

    invoke-direct {v0, p0}, Lbh;-><init>([B)V

    return-object v0
.end method
