.class Lek;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lba;


# direct methods
.method public constructor <init>(Lba;)V
    .locals 0

    iput-object p1, p0, Lek;->a:Lba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)B
    .locals 0

    .line 1
    iget-object p0, p0, Lek;->a:Lba;

    invoke-virtual {p0, p1}, Lba;->a(I)B

    move-result p0

    return p0
.end method

.method public a()I
    .locals 0

    .line 2
    iget-object p0, p0, Lek;->a:Lba;

    invoke-virtual {p0}, Lba;->a()I

    move-result p0

    return p0
.end method
