.class public final enum Lfa;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lfa;

.field public static final enum b:Lfa;

.field public static final enum c:Lfa;

.field public static final enum d:Lfa;

.field public static final enum e:Lfa;

.field public static final enum f:Lfa;

.field public static final enum g:Lfa;

.field public static final enum h:Lfa;

.field public static final enum i:Lfa;

.field private static final synthetic j:[Lfa;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lfa;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Lfa;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lfa;->a:Lfa;

    new-instance v1, Lfa;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "LONG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lfa;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v1, Lfa;->b:Lfa;

    new-instance v2, Lfa;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "FLOAT"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lfa;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v2, Lfa;->c:Lfa;

    new-instance v3, Lfa;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const-string v5, "DOUBLE"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lfa;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v3, Lfa;->d:Lfa;

    new-instance v4, Lfa;

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v7, "BOOLEAN"

    invoke-direct {v4, v7, v5, v6}, Lfa;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v4, Lfa;->e:Lfa;

    new-instance v5, Lfa;

    const/4 v6, 0x5

    const-string v7, ""

    const-string v8, "STRING"

    invoke-direct {v5, v8, v6, v7}, Lfa;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v5, Lfa;->f:Lfa;

    new-instance v6, Lfa;

    const/4 v7, 0x6

    sget-object v8, Lba;->a:Lba;

    const-string v9, "BYTE_STRING"

    invoke-direct {v6, v9, v7, v8}, Lfa;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v6, Lfa;->g:Lfa;

    new-instance v7, Lfa;

    const-string v8, "ENUM"

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lfa;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v7, Lfa;->h:Lfa;

    new-instance v8, Lfa;

    const-string v9, "MESSAGE"

    const/16 v11, 0x8

    invoke-direct {v8, v9, v11, v10}, Lfa;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v8, Lfa;->i:Lfa;

    filled-new-array/range {v0 .. v8}, [Lfa;

    move-result-object v0

    sput-object v0, Lfa;->j:[Lfa;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lfa;
    .locals 1

    sget-object v0, Lfa;->j:[Lfa;

    invoke-virtual {v0}, [Lfa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfa;

    return-object v0
.end method
