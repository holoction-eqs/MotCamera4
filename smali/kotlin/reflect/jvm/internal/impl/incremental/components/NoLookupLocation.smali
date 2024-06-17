.class public final enum Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/incremental/components/LookupLocation;


# static fields
.field public static final synthetic $VALUES:[Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

.field public static final enum FOR_ALREADY_TRACKED:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

.field public static final enum FOR_NON_TRACKED_SCOPE:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

.field public static final enum FROM_BUILTINS:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

.field public static final enum FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

.field public static final enum FROM_JAVA_LOADER:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

.field public static final enum FROM_REFLECTION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

.field public static final enum WHEN_GET_ALL_DESCRIPTORS:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

.field public static final enum WHEN_GET_SUPER_MEMBERS:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object v0, v1

    const-string v2, "FROM_IDE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object v1, v2

    const-string v3, "FROM_BACKEND"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object v2, v3

    const-string v4, "FROM_TEST"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object v3, v4

    const-string v5, "FROM_BUILTINS"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_BUILTINS:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    new-instance v5, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object v4, v5

    const-string v6, "WHEN_CHECK_DECLARATION_CONFLICTS"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object v5, v6

    const-string v7, "WHEN_CHECK_OVERRIDES"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object v6, v7

    const-string v8, "FOR_SCRIPT"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object v7, v8

    const-string v9, "FROM_REFLECTION"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_REFLECTION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    new-instance v9, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object v8, v9

    const-string v10, "WHEN_RESOLVE_DECLARATION"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object v9, v10

    const-string v11, "WHEN_GET_DECLARATION_SCOPE"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object v10, v11

    const-string v12, "WHEN_RESOLVING_DEFAULT_TYPE_ARGUMENTS"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object v11, v12

    const-string v13, "FOR_ALREADY_TRACKED"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FOR_ALREADY_TRACKED:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    new-instance v13, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object v12, v13

    const-string v14, "WHEN_GET_ALL_DESCRIPTORS"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->WHEN_GET_ALL_DESCRIPTORS:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object v13, v14

    const-string v15, "WHEN_TYPING"

    move-object/from16 v23, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object v14, v0

    const-string v15, "WHEN_GET_SUPER_MEMBERS"

    move-object/from16 v24, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->WHEN_GET_SUPER_MEMBERS:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object v15, v0

    const-string v1, "FOR_NON_TRACKED_SCOPE"

    move-object/from16 v25, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FOR_NON_TRACKED_SCOPE:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object/from16 v16, v0

    const-string v1, "FROM_SYNTHETIC_SCOPE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object/from16 v17, v0

    const-string v1, "FROM_DESERIALIZATION"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_DESERIALIZATION:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object/from16 v18, v0

    const-string v1, "FROM_JAVA_LOADER"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->FROM_JAVA_LOADER:Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object/from16 v19, v0

    const-string v1, "WHEN_GET_LOCAL_VARIABLE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object/from16 v20, v0

    const-string v1, "WHEN_FIND_BY_FQNAME"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object/from16 v21, v0

    const-string v1, "WHEN_GET_COMPANION_OBJECT"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-object/from16 v22, v0

    const-string v1, "FOR_DEFAULT_IMPORTS"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    filled-new-array/range {v0 .. v22}, [Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;
    .locals 1

    const-class v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    return-object p0
.end method

.method public static values()[Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;->$VALUES:[Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/reflect/jvm/internal/impl/incremental/components/NoLookupLocation;

    return-object v0
.end method
