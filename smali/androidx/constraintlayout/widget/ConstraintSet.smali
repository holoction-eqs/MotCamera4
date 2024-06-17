.class public final Landroidx/constraintlayout/widget/ConstraintSet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VISIBILITY_FLAGS:[I

.field public static final mapToConstant:Landroid/util/SparseIntArray;

.field public static final overrideMapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field public final mConstraints:Ljava/util/HashMap;

.field public final mForceId:Z

.field public final mSavedAttributes:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/16 v2, 0x8

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v3, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    const/16 v4, 0x19

    const/16 v5, 0x52

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1a

    const/16 v6, 0x53

    invoke-virtual {v0, v6, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1d

    const/16 v7, 0x55

    invoke-virtual {v0, v7, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x56

    const/16 v8, 0x1e

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5c

    const/16 v8, 0x24

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5b

    const/16 v8, 0x23

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x3f

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x3e

    const/4 v8, 0x3

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x1

    const/16 v8, 0x3a

    invoke-virtual {v0, v8, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5b

    const/16 v9, 0x3c

    invoke-virtual {v0, v9, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5c

    const/16 v10, 0x3b

    invoke-virtual {v0, v10, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x65

    const/4 v11, 0x6

    invoke-virtual {v0, v4, v11}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x66

    const/4 v12, 0x7

    invoke-virtual {v0, v4, v12}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x11

    const/16 v13, 0x46

    invoke-virtual {v0, v13, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x12

    const/16 v14, 0x47

    invoke-virtual {v0, v14, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x13

    const/16 v15, 0x48

    invoke-virtual {v0, v15, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x63

    const/16 v7, 0x36

    invoke-virtual {v0, v7, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x0

    const/16 v6, 0x1b

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x20

    const/16 v6, 0x57

    invoke-virtual {v0, v6, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x58

    const/16 v5, 0x21

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0xa

    const/16 v5, 0x45

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x9

    const/16 v15, 0x44

    invoke-virtual {v0, v15, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x6a

    const/16 v14, 0xd

    invoke-virtual {v0, v4, v14}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x6d

    const/16 v13, 0x10

    invoke-virtual {v0, v4, v13}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x6b

    const/16 v5, 0xe

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x68

    const/16 v15, 0xb

    invoke-virtual {v0, v4, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x6c

    const/16 v15, 0xf

    invoke-virtual {v0, v4, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x69

    const/16 v10, 0xc

    invoke-virtual {v0, v4, v10}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x28

    const/16 v10, 0x5f

    invoke-virtual {v0, v10, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x50

    const/16 v8, 0x27

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x4f

    const/16 v8, 0x29

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5e

    const/16 v8, 0x2a

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x4e

    const/16 v8, 0x14

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5d

    const/16 v8, 0x25

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x43

    const/4 v8, 0x5

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x51

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5a

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x54

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x3d

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x39

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x5

    const/16 v8, 0x18

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1c

    invoke-virtual {v0, v12, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x17

    const/16 v8, 0x1f

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x18

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x22

    invoke-virtual {v0, v11, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x3

    const/16 v8, 0x17

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x15

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x60

    invoke-virtual {v0, v4, v10}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x49

    const/16 v8, 0x60

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x2

    const/16 v8, 0x16

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x2b

    invoke-virtual {v0, v14, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1a

    const/16 v8, 0x2c

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x15

    const/16 v8, 0x2d

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x16

    const/16 v8, 0x2e

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x14

    invoke-virtual {v0, v4, v9}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x12

    const/16 v8, 0x2f

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x13

    const/16 v8, 0x30

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x31

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x32

    invoke-virtual {v0, v15, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x33

    invoke-virtual {v0, v13, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x11

    const/16 v8, 0x34

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x19

    const/16 v8, 0x35

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x61

    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x4a

    const/16 v8, 0x37

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x62

    const/16 v8, 0x38

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x4b

    const/16 v8, 0x39

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x63

    const/16 v8, 0x3a

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x4c

    const/16 v8, 0x3b

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x40

    const/16 v8, 0x3d

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x42

    const/16 v8, 0x3e

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x41

    const/16 v8, 0x3f

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1c

    const/16 v8, 0x40

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x79

    const/16 v8, 0x41

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x23

    const/16 v8, 0x42

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x7a

    const/16 v8, 0x43

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x71

    const/16 v8, 0x4f

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v4, 0x1

    const/16 v8, 0x26

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x70

    const/16 v8, 0x44

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x64

    const/16 v8, 0x45

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x4d

    const/16 v8, 0x46

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x6f

    const/16 v8, 0x61

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x20

    const/16 v8, 0x47

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1e

    const/16 v8, 0x48

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1f

    const/16 v8, 0x49

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x21

    const/16 v8, 0x4a

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x1d

    const/16 v8, 0x4b

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x72

    const/16 v8, 0x4c

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x59

    const/16 v8, 0x4d

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x7b

    const/16 v8, 0x4e

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x38

    const/16 v8, 0x50

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x37

    const/16 v8, 0x51

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x74

    const/16 v8, 0x52

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x78

    const/16 v8, 0x53

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x77

    const/16 v8, 0x54

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x76

    const/16 v8, 0x55

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x75

    const/16 v7, 0x56

    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->append(II)V

    invoke-virtual {v3, v8, v11}, Landroid/util/SparseIntArray;->append(II)V

    invoke-virtual {v3, v8, v12}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x0

    const/16 v4, 0x1b

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x59

    invoke-virtual {v3, v0, v14}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x5c

    invoke-virtual {v3, v0, v13}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x5a

    invoke-virtual {v3, v0, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0xb

    invoke-virtual {v3, v6, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x5b

    invoke-virtual {v3, v0, v15}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x58

    const/16 v4, 0xc

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x4e

    const/16 v4, 0x28

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x27

    const/16 v4, 0x47

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x29

    const/16 v4, 0x46

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x4d

    const/16 v4, 0x2a

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x14

    const/16 v4, 0x45

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x4c

    const/16 v4, 0x25

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x5

    invoke-virtual {v3, v9, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x48

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x4b

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x49

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x39

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x38

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x5

    const/16 v4, 0x18

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x1c

    invoke-virtual {v3, v12, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x17

    const/16 v4, 0x1f

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x18

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x22

    invoke-virtual {v3, v11, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x2

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x3

    const/16 v2, 0x17

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x15

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x4f

    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x40

    const/16 v1, 0x60

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x2

    const/16 v1, 0x16

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x2b

    invoke-virtual {v3, v14, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x1a

    const/16 v1, 0x2c

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x15

    const/16 v1, 0x2d

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x16

    const/16 v1, 0x2e

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x14

    invoke-virtual {v3, v0, v9}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x12

    const/16 v1, 0x2f

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x13

    const/16 v1, 0x30

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x31

    invoke-virtual {v3, v5, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x32

    invoke-virtual {v3, v15, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x33

    invoke-virtual {v3, v13, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x11

    const/16 v1, 0x34

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x19

    const/16 v1, 0x35

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x50

    const/16 v1, 0x36

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x41

    const/16 v1, 0x37

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x51

    const/16 v1, 0x38

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x42

    const/16 v1, 0x39

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x52

    const/16 v1, 0x3a

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x43

    const/16 v2, 0x3b

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x3e

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x3f

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x1c

    const/16 v1, 0x40

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x69

    const/16 v1, 0x41

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x22

    const/16 v1, 0x42

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x6a

    const/16 v1, 0x43

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x60

    const/16 v1, 0x4f

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x1

    const/16 v1, 0x26

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x61

    const/16 v1, 0x62

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x44

    invoke-virtual {v3, v10, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x53

    const/16 v2, 0x45

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v1, 0x46

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x20

    const/16 v1, 0x47

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x1e

    const/16 v1, 0x48

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x1f

    const/16 v1, 0x49

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x21

    const/16 v1, 0x4a

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x1d

    const/16 v1, 0x4b

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x62

    const/16 v1, 0x4c

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x4a

    const/16 v1, 0x4d

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x6b

    const/16 v1, 0x4e

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x37

    const/16 v1, 0x50

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x51

    const/16 v1, 0x36

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x64

    const/16 v1, 0x52

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x68

    const/16 v1, 0x53

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x67

    const/16 v1, 0x54

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x66

    const/16 v1, 0x55

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x65

    const/16 v1, 0x56

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x5e

    const/16 v1, 0x61

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mSavedAttributes:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    return-void
.end method

.method public static convertReferenceString(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I
    .locals 10

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_3

    aget-object v5, p1, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    const-class v7, Landroidx/constraintlayout/widget/R$id;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v7, v2

    :goto_1
    if-nez v7, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    :cond_0
    if-nez v7, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v9, v5, Ljava/lang/String;

    if-eqz v9, :cond_1

    iget-object v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-eqz v9, :cond_1

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_1
    if-eqz v6, :cond_2

    instance-of v5, v6, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_2
    add-int/lit8 v5, v4, 0x1

    aput v7, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    :cond_3
    array-length p0, p1

    if-eq v4, p0, :cond_4

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method public static fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 20

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    if-eqz p2, :cond_0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintOverride:[I

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->Constraint:[I

    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Format$1;->NAMED_EASING:[Ljava/lang/String;

    sget-object v3, Landroidx/constraintlayout/widget/ConstraintSet;->VISIBILITY_FLAGS:[I

    sget-object v4, Landroidx/constraintlayout/widget/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget-object v14, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget-object v15, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    const-string v5, "/"

    const-string v6, "unused attribute 0x"

    const-string v10, "CURRENTLY UNSUPPORTED"

    const-string v7, "Unknown attribute 0x"

    const-string v8, "   "

    const-string v11, "ConstraintSet"

    if-eqz p2, :cond_7

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v9

    move-object/from16 v16, v7

    new-instance v7, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    invoke-direct {v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;-><init>()V

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v17, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v9, :cond_f

    move/from16 p2, v9

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v9

    move/from16 v18, v3

    sget-object v3, Landroidx/constraintlayout/widget/ConstraintSet;->overrideMapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move-object/from16 v19, v2

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v7

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :pswitch_1
    iget-boolean v3, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidelineUseRtl:Z

    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/16 v9, 0x63

    move-object/from16 v19, v2

    goto/16 :goto_4

    :pswitch_2
    sget v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->$r8$clinit:I

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    iget v3, v3, Landroid/util/TypedValue;->type:I

    move-object/from16 v19, v2

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    goto/16 :goto_a

    :cond_1
    iget v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    goto/16 :goto_a

    :pswitch_3
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v3, 0x61

    goto/16 :goto_9

    :pswitch_4
    move-object/from16 v19, v2

    const/4 v2, 0x1

    goto :goto_2

    :pswitch_5
    move-object/from16 v19, v2

    const/4 v2, 0x0

    :goto_2
    invoke-static {v7, v1, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_a

    :pswitch_6
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0x5e

    goto/16 :goto_9

    :pswitch_7
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0x5d

    goto/16 :goto_9

    :pswitch_8
    move-object/from16 v19, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :pswitch_9
    move-object/from16 v19, v2

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v3, -0x1

    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    const/16 v9, 0x59

    invoke-virtual {v7, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    iget v2, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    if-eq v2, v3, :cond_6

    move v2, v3

    goto :goto_3

    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    const/16 v3, 0x5a

    invoke-virtual {v7, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    iget-object v2, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, -0x1

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    const/16 v9, 0x59

    invoke-virtual {v7, v9, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    :goto_3
    const/4 v3, -0x2

    const/16 v9, 0x58

    invoke-virtual {v7, v9, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    goto/16 :goto_a

    :cond_3
    const/4 v2, -0x1

    const/16 v9, 0x58

    invoke-virtual {v7, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    goto/16 :goto_a

    :cond_4
    const/16 v2, 0x58

    iget v3, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-virtual {v7, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    goto/16 :goto_a

    :pswitch_a
    move-object/from16 v19, v2

    iget v2, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v3, 0x55

    goto/16 :goto_7

    :pswitch_b
    move-object/from16 v19, v2

    iget v2, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    const/16 v3, 0x54

    goto/16 :goto_9

    :pswitch_c
    move-object/from16 v19, v2

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    invoke-static {v1, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    const/16 v3, 0x53

    goto/16 :goto_9

    :pswitch_d
    move-object/from16 v19, v2

    iget v2, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    const/16 v3, 0x52

    goto/16 :goto_9

    :pswitch_e
    move-object/from16 v19, v2

    iget-boolean v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/16 v9, 0x51

    goto :goto_4

    :pswitch_f
    move-object/from16 v19, v2

    iget-boolean v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/16 v9, 0x50

    goto :goto_4

    :pswitch_10
    move-object/from16 v19, v2

    iget v2, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v3, 0x4f

    goto/16 :goto_7

    :pswitch_11
    move-object/from16 v19, v2

    iget v2, v12, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v3, 0x4e

    goto/16 :goto_9

    :pswitch_12
    move-object/from16 v19, v2

    const/16 v2, 0x4d

    goto/16 :goto_8

    :pswitch_13
    move-object/from16 v19, v2

    iget v2, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v3, 0x4c

    goto/16 :goto_9

    :pswitch_14
    move-object/from16 v19, v2

    iget-boolean v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    const/16 v9, 0x4b

    :goto_4
    invoke-virtual {v7, v9, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    goto/16 :goto_a

    :pswitch_15
    move-object/from16 v19, v2

    const/16 v2, 0x4a

    goto/16 :goto_8

    :pswitch_16
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0x49

    goto/16 :goto_9

    :pswitch_17
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v3, 0x48

    goto/16 :goto_9

    :pswitch_18
    move-object/from16 v19, v2

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :pswitch_19
    move-object/from16 v19, v2

    const/16 v2, 0x46

    goto :goto_5

    :pswitch_1a
    move-object/from16 v19, v2

    const/16 v2, 0x45

    :goto_5
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    invoke-virtual {v7, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    goto/16 :goto_a

    :pswitch_1b
    move-object/from16 v19, v2

    iget v2, v12, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v3, 0x44

    goto/16 :goto_7

    :pswitch_1c
    move-object/from16 v19, v2

    iget v2, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v3, 0x43

    goto/16 :goto_7

    :pswitch_1d
    move-object/from16 v19, v2

    const/16 v2, 0x42

    const/4 v3, 0x0

    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {v7, v2, v9}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    goto/16 :goto_a

    :pswitch_1e
    move-object/from16 v19, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    aget-object v2, v19, v3

    :goto_6
    const/16 v3, 0x41

    invoke-virtual {v7, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    goto/16 :goto_a

    :pswitch_1f
    move-object/from16 v19, v2

    iget v2, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    invoke-static {v1, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    const/16 v3, 0x40

    goto/16 :goto_9

    :pswitch_20
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v3, 0x3f

    goto/16 :goto_7

    :pswitch_21
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0x3e

    goto/16 :goto_9

    :pswitch_22
    move-object/from16 v19, v2

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v3, 0x3c

    goto/16 :goto_7

    :pswitch_23
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0x3b

    goto/16 :goto_9

    :pswitch_24
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0x3a

    goto/16 :goto_9

    :pswitch_25
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0x39

    goto/16 :goto_9

    :pswitch_26
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0x38

    goto/16 :goto_9

    :pswitch_27
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v3, 0x37

    goto/16 :goto_9

    :pswitch_28
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v3, 0x36

    goto/16 :goto_9

    :pswitch_29
    move-object/from16 v19, v2

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    const/16 v3, 0x35

    goto/16 :goto_7

    :pswitch_2a
    move-object/from16 v19, v2

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    const/16 v3, 0x34

    goto/16 :goto_7

    :pswitch_2b
    move-object/from16 v19, v2

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    const/16 v3, 0x33

    goto/16 :goto_7

    :pswitch_2c
    move-object/from16 v19, v2

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    const/16 v3, 0x32

    goto/16 :goto_7

    :pswitch_2d
    move-object/from16 v19, v2

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    const/16 v3, 0x31

    goto/16 :goto_7

    :pswitch_2e
    move-object/from16 v19, v2

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v3, 0x30

    goto/16 :goto_7

    :pswitch_2f
    move-object/from16 v19, v2

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v3, 0x2f

    goto/16 :goto_7

    :pswitch_30
    move-object/from16 v19, v2

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v3, 0x2e

    goto/16 :goto_7

    :pswitch_31
    move-object/from16 v19, v2

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v3, 0x2d

    goto/16 :goto_7

    :pswitch_32
    move-object/from16 v19, v2

    const/16 v2, 0x2c

    const/4 v3, 0x1

    invoke-virtual {v7, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    iget v3, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v7, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    goto/16 :goto_a

    :pswitch_33
    move-object/from16 v19, v2

    iget v2, v12, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v3, 0x2b

    goto/16 :goto_7

    :pswitch_34
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v3, 0x2a

    goto/16 :goto_9

    :pswitch_35
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v3, 0x29

    goto/16 :goto_9

    :pswitch_36
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v3, 0x28

    goto/16 :goto_7

    :pswitch_37
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v3, 0x27

    goto/16 :goto_7

    :pswitch_38
    move-object/from16 v19, v2

    iget v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    const/16 v3, 0x26

    goto/16 :goto_9

    :pswitch_39
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v3, 0x25

    goto/16 :goto_7

    :pswitch_3a
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0x22

    goto/16 :goto_9

    :pswitch_3b
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0x1f

    goto/16 :goto_9

    :pswitch_3c
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0x1c

    goto/16 :goto_9

    :pswitch_3d
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v3, 0x1b

    goto/16 :goto_9

    :pswitch_3e
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0x18

    goto/16 :goto_9

    :pswitch_3f
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    const/16 v3, 0x17

    goto/16 :goto_9

    :pswitch_40
    move-object/from16 v19, v2

    iget v2, v12, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget v2, v17, v2

    const/16 v3, 0x16

    goto/16 :goto_9

    :pswitch_41
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    const/16 v3, 0x15

    goto/16 :goto_9

    :pswitch_42
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v3, 0x14

    goto :goto_7

    :pswitch_43
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    const/16 v3, 0x13

    :goto_7
    invoke-virtual {v7, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V

    goto/16 :goto_a

    :pswitch_44
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/16 v3, 0x12

    goto/16 :goto_9

    :pswitch_45
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/16 v3, 0x11

    goto/16 :goto_9

    :pswitch_46
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0x10

    goto/16 :goto_9

    :pswitch_47
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0xf

    goto :goto_9

    :pswitch_48
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0xe

    goto :goto_9

    :pswitch_49
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0xd

    goto :goto_9

    :pswitch_4a
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0xc

    goto :goto_9

    :pswitch_4b
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0xb

    goto :goto_9

    :pswitch_4c
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/16 v3, 0x8

    goto :goto_9

    :pswitch_4d
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v3, 0x7

    goto :goto_9

    :pswitch_4e
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v3, 0x6

    goto :goto_9

    :pswitch_4f
    move-object/from16 v19, v2

    const/4 v2, 0x5

    :goto_8
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    goto :goto_a

    :pswitch_50
    move-object/from16 v19, v2

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    const/4 v3, 0x2

    :goto_9
    invoke-virtual {v7, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    :cond_6
    :goto_a
    move-object/from16 v3, v16

    move-object/from16 v16, v7

    :goto_b
    add-int/lit8 v2, v18, 0x1

    move/from16 v9, p2

    move-object/from16 v7, v16

    move-object/from16 v16, v3

    move v3, v2

    move-object/from16 v2, v19

    goto/16 :goto_1

    :cond_7
    move-object/from16 v19, v2

    move-object/from16 v17, v3

    move-object v3, v7

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v2, :cond_e

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v9

    move/from16 p2, v2

    const/4 v2, 0x1

    if-eq v9, v2, :cond_8

    const/16 v2, 0x17

    if-eq v2, v9, :cond_8

    const/16 v2, 0x18

    if-eq v2, v9, :cond_9

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_d

    :cond_8
    const/16 v2, 0x18

    :cond_9
    :goto_d
    invoke-virtual {v4, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v16

    packed-switch v16, :pswitch_data_1

    :pswitch_51
    move-object/from16 v16, v6

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :pswitch_52
    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    goto :goto_f

    :pswitch_53
    const/4 v2, 0x1

    goto :goto_e

    :pswitch_54
    const/4 v2, 0x0

    :goto_e
    invoke-static {v15, v1, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto :goto_f

    :pswitch_55
    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    goto :goto_f

    :pswitch_56
    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    goto :goto_f

    :pswitch_57
    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    invoke-static {v1, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    goto :goto_f

    :pswitch_58
    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    invoke-static {v1, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    :goto_f
    move-object/from16 v16, v6

    goto :goto_10

    :pswitch_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v6

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    const/4 v6, -0x1

    goto/16 :goto_12

    :pswitch_5a
    move-object/from16 v16, v6

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_a

    const/4 v6, -0x1

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    goto/16 :goto_12

    :cond_a
    const/4 v6, 0x3

    if-ne v2, v6, :cond_c

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorString:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_b

    const/4 v2, -0x1

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    goto/16 :goto_11

    :cond_b
    const/4 v2, -0x1

    goto/16 :goto_12

    :cond_c
    const/4 v2, -0x1

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeInterpolatorID:I

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    goto/16 :goto_11

    :pswitch_5b
    move-object/from16 v16, v6

    const/4 v2, -0x1

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionPhase:F

    goto/16 :goto_12

    :pswitch_5c
    move-object/from16 v16, v6

    const/4 v2, -0x1

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mQuantizeMotionSteps:I

    goto/16 :goto_12

    :pswitch_5d
    move-object/from16 v16, v6

    const/4 v2, -0x1

    iget v6, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    invoke-static {v1, v9, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    goto/16 :goto_12

    :pswitch_5e
    move-object/from16 v16, v6

    const/4 v2, -0x1

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    goto/16 :goto_12

    :pswitch_5f
    move-object/from16 v16, v6

    const/4 v2, -0x1

    iget-boolean v6, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    goto/16 :goto_12

    :pswitch_60
    move-object/from16 v16, v6

    const/4 v2, -0x1

    iget-boolean v6, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    goto/16 :goto_12

    :pswitch_61
    move-object/from16 v16, v6

    const/4 v2, -0x1

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    goto/16 :goto_12

    :pswitch_62
    move-object/from16 v16, v6

    const/4 v2, -0x1

    iget v6, v12, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v12, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    goto/16 :goto_12

    :pswitch_63
    move-object/from16 v16, v6

    const/4 v2, -0x1

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    goto/16 :goto_12

    :pswitch_64
    move-object/from16 v16, v6

    const/4 v2, -0x1

    iget v6, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    goto/16 :goto_12

    :pswitch_65
    move-object/from16 v16, v6

    const/4 v2, -0x1

    iget-boolean v6, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    goto/16 :goto_12

    :pswitch_66
    move-object/from16 v16, v6

    const/4 v2, -0x1

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    goto/16 :goto_12

    :pswitch_67
    move-object/from16 v16, v6

    const/4 v2, -0x1

    iget v6, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    goto/16 :goto_12

    :pswitch_68
    move-object/from16 v16, v6

    const/4 v2, -0x1

    iget v6, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    goto/16 :goto_12

    :pswitch_69
    move-object/from16 v16, v6

    const/4 v2, -0x1

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :pswitch_6a
    move-object/from16 v16, v6

    const/4 v2, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    iput v9, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    goto/16 :goto_12

    :pswitch_6b
    move-object/from16 v16, v6

    const/4 v2, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    iput v9, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    goto/16 :goto_12

    :pswitch_6c
    move-object/from16 v16, v6

    const/high16 v6, 0x3f800000    # 1.0f

    iget v2, v12, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v12, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    goto/16 :goto_12

    :pswitch_6d
    move-object/from16 v16, v6

    const/high16 v6, 0x3f800000    # 1.0f

    iget v2, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    goto/16 :goto_12

    :pswitch_6e
    move-object/from16 v16, v6

    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    :goto_11
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_12

    :pswitch_6f
    move-object/from16 v16, v6

    const/4 v2, 0x0

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    iget v6, v6, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v6, v2, :cond_d

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    const/4 v6, 0x0

    goto :goto_11

    :cond_d
    const/4 v6, 0x0

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    aget-object v9, v19, v9

    goto :goto_11

    :pswitch_70
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    invoke-static {v1, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v14, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    goto/16 :goto_12

    :pswitch_71
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    goto/16 :goto_12

    :pswitch_72
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    goto/16 :goto_12

    :pswitch_73
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    invoke-static {v1, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    goto/16 :goto_12

    :pswitch_74
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    goto/16 :goto_12

    :pswitch_75
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    goto/16 :goto_12

    :pswitch_76
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    goto/16 :goto_12

    :pswitch_77
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    goto/16 :goto_12

    :pswitch_78
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    goto/16 :goto_12

    :pswitch_79
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    goto/16 :goto_12

    :pswitch_7a
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    goto/16 :goto_12

    :pswitch_7b
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    goto/16 :goto_12

    :pswitch_7c
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    goto/16 :goto_12

    :pswitch_7d
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    goto/16 :goto_12

    :pswitch_7e
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    goto/16 :goto_12

    :pswitch_7f
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    goto/16 :goto_12

    :pswitch_80
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    goto/16 :goto_12

    :pswitch_81
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    goto/16 :goto_12

    :pswitch_82
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    goto/16 :goto_12

    :pswitch_83
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    goto/16 :goto_12

    :pswitch_84
    move-object/from16 v16, v6

    const/4 v2, 0x1

    const/4 v6, 0x0

    iput-boolean v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    iget v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v13, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    goto/16 :goto_12

    :pswitch_85
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v12, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v12, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    goto/16 :goto_12

    :pswitch_86
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    goto/16 :goto_12

    :pswitch_87
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    goto/16 :goto_12

    :pswitch_88
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    goto/16 :goto_12

    :pswitch_89
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    goto/16 :goto_12

    :pswitch_8a
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    goto/16 :goto_12

    :pswitch_8b
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    goto/16 :goto_12

    :pswitch_8c
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    invoke-static {v1, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    goto/16 :goto_12

    :pswitch_8d
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    invoke-static {v1, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    goto/16 :goto_12

    :pswitch_8e
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    goto/16 :goto_12

    :pswitch_8f
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    invoke-static {v1, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    goto/16 :goto_12

    :pswitch_90
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    invoke-static {v1, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    goto/16 :goto_12

    :pswitch_91
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    goto/16 :goto_12

    :pswitch_92
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    invoke-static {v1, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    goto/16 :goto_12

    :pswitch_93
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    invoke-static {v1, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    goto/16 :goto_12

    :pswitch_94
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    goto/16 :goto_12

    :pswitch_95
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    goto/16 :goto_12

    :pswitch_96
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    invoke-static {v1, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    goto/16 :goto_12

    :pswitch_97
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    invoke-static {v1, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    goto/16 :goto_12

    :pswitch_98
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    goto/16 :goto_12

    :pswitch_99
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    goto/16 :goto_12

    :pswitch_9a
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v12, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget v2, v17, v2

    iput v2, v12, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    goto/16 :goto_12

    :pswitch_9b
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    goto/16 :goto_12

    :pswitch_9c
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    goto/16 :goto_12

    :pswitch_9d
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    goto/16 :goto_12

    :pswitch_9e
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    goto/16 :goto_12

    :pswitch_9f
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    goto/16 :goto_12

    :pswitch_a0
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    goto/16 :goto_12

    :pswitch_a1
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    goto/16 :goto_12

    :pswitch_a2
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    goto/16 :goto_12

    :pswitch_a3
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    goto/16 :goto_12

    :pswitch_a4
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    goto/16 :goto_12

    :pswitch_a5
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    goto/16 :goto_12

    :pswitch_a6
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    invoke-static {v1, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    goto/16 :goto_12

    :pswitch_a7
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    invoke-static {v1, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    goto :goto_12

    :pswitch_a8
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    goto :goto_12

    :pswitch_a9
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    goto :goto_12

    :pswitch_aa
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    goto :goto_12

    :pswitch_ab
    move-object/from16 v16, v6

    const/4 v6, 0x0

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    goto :goto_12

    :pswitch_ac
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    invoke-static {v1, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    goto :goto_12

    :pswitch_ad
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    invoke-static {v1, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    goto :goto_12

    :pswitch_ae
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    invoke-virtual {v1, v9, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    goto :goto_12

    :pswitch_af
    move-object/from16 v16, v6

    const/4 v6, 0x0

    iget v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    invoke-static {v1, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    :goto_12
    add-int/lit8 v7, v7, 0x1

    move/from16 v2, p2

    move-object/from16 v6, v16

    goto/16 :goto_c

    :cond_e
    iget-object v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    iput-object v2, v15, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    :cond_f
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_50
        :pswitch_0
        :pswitch_0
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_0
        :pswitch_0
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_0
        :pswitch_0
        :pswitch_3d
        :pswitch_3c
        :pswitch_0
        :pswitch_0
        :pswitch_3b
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
    .end packed-switch
.end method

.method public static lookupID(Landroid/content/res/TypedArray;II)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    :cond_0
    return p2
.end method

.method public static parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x3

    const/16 v2, 0x15

    const/16 v3, 0x17

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x5

    const/4 v7, 0x0

    if-eq v0, v1, :cond_b

    if-eq v0, v6, :cond_3

    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 p2, -0x4

    const/4 v0, -0x2

    if-eq p1, p2, :cond_2

    const/4 p2, -0x3

    if-eq p1, p2, :cond_1

    if-eq p1, v0, :cond_4

    if-eq p1, v5, :cond_4

    :cond_1
    move v4, v7

    goto :goto_0

    :cond_2
    move v7, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    :cond_4
    move v4, v7

    move v7, p1

    :goto_0
    instance-of p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz p1, :cond_6

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-nez p3, :cond_5

    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    goto :goto_2

    :cond_5
    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    goto :goto_2

    :cond_6
    instance-of p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    if-eqz p1, :cond_8

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    if-nez p3, :cond_7

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    goto :goto_2

    :cond_7
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    goto :goto_2

    :cond_8
    instance-of p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    if-eqz p1, :cond_a

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    if-nez p3, :cond_9

    invoke-virtual {p0, v3, v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    const/16 p1, 0x50

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v2, v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    const/16 p1, 0x51

    :goto_1
    invoke-virtual {p0, p1, v4}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(IZ)V

    :cond_a
    :goto_2
    return-void

    :cond_b
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    goto/16 :goto_6

    :cond_c
    const/16 p2, 0x3d

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez p2, :cond_1c

    add-int/2addr v0, v5

    if-ge p2, v0, :cond_1c

    invoke-virtual {p1, v7, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr p2, v4

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ratio"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz p2, :cond_e

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-nez p3, :cond_d

    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_3

    :cond_d
    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_3
    invoke-static {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionRatioString(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_e
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    if-eqz p2, :cond_f

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    goto/16 :goto_6

    :cond_f
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    if-eqz p2, :cond_1c

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    invoke-virtual {p0, v6, p1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_10
    const-string v0, "weight"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz p2, :cond_12

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-nez p3, :cond_11

    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    goto/16 :goto_6

    :cond_11
    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    goto/16 :goto_6

    :cond_12
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    if-eqz p2, :cond_14

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    if-nez p3, :cond_13

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    goto/16 :goto_6

    :cond_13
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    goto/16 :goto_6

    :cond_14
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    if-eqz p2, :cond_1c

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    if-nez p3, :cond_15

    invoke-virtual {p0, v3, v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    const/16 p2, 0x27

    goto :goto_4

    :cond_15
    invoke-virtual {p0, v2, v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    const/16 p2, 0x28

    :goto_4
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(FI)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :cond_16
    const-string v0, "parent"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1c

    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v0, 0x2

    if-eqz p2, :cond_18

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-nez p3, :cond_17

    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    goto :goto_6

    :cond_17
    iput v7, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    goto :goto_6

    :cond_18
    instance-of p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    if-eqz p2, :cond_1a

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    if-nez p3, :cond_19

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    goto :goto_6

    :cond_19
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    goto :goto_6

    :cond_1a
    instance-of p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    if-eqz p1, :cond_1c

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    if-nez p3, :cond_1b

    invoke-virtual {p0, v3, v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    const/16 p1, 0x36

    goto :goto_5

    :cond_1b
    invoke-virtual {p0, v2, v7}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V

    const/16 p1, 0x37

    :goto_5
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->add(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1c
    :goto_6
    return-void
.end method

.method public static parseDimensionRatioString(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-lez v1, :cond_2

    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "W"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "H"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    add-int/2addr v1, v3

    move v4, v2

    move v2, v1

    :cond_2
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    sub-int/2addr v0, v3

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v5, v0, v2

    if-lez v5, :cond_5

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    if-ne v4, v3, :cond_3

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    goto :goto_1

    :cond_3
    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    :goto_1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    return-void
.end method

.method public static sideToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "undefined"

    return-object p0

    :pswitch_0
    const-string p0, "end"

    return-object p0

    :pswitch_1
    const-string p0, "start"

    return-object p0

    :pswitch_2
    const-string p0, "baseline"

    return-object p0

    :pswitch_3
    const-string p0, "bottom"

    return-object p0

    :pswitch_4
    const-string p0, "top"

    return-object p0

    :pswitch_5
    const-string p0, "right"

    return-object p0

    :pswitch_6
    const-string p0, "left"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public final applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    new-instance v4, Ljava/util/HashSet;

    iget-object v5, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/4 v0, 0x1

    if-ge v6, v3, :cond_f

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "ConstraintSet"

    if-nez v9, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "id unknown "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v7, "UNKNOWN"

    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_0
    iget-boolean v9, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    const/4 v11, -0x1

    if-eqz v9, :cond_2

    if-eq v8, v11, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_2
    if-ne v8, v11, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    if-nez v9, :cond_4

    :goto_3
    move/from16 v18, v3

    goto/16 :goto_d

    :cond_4
    instance-of v10, v7, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v10, :cond_6

    iget-object v10, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    move-object v0, v7

    check-cast v0, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v0, v8}, Landroid/view/View;->setId(I)V

    iget v8, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    iget v8, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    iget-boolean v8, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/widget/Barrier;->setAllowsGoneWidget(Z)V

    iget-object v8, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    if-eqz v8, :cond_5

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    goto :goto_4

    :cond_5
    iget-object v8, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    if-eqz v8, :cond_6

    invoke-static {v0, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->convertReferenceString(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I

    move-result-object v8

    iput-object v8, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    :cond_6
    :goto_4
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v8}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    invoke-virtual {v9, v8}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    iget-object v10, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    const-string v11, "\" not found on "

    const-string v12, " Custom Attribute \""

    const-string v13, "TransitionLayout"

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintAttribute;

    move-object/from16 v16, v10

    iget-boolean v10, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mMethod:Z

    if-nez v10, :cond_7

    const-string v10, "set"

    invoke-static {v10, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_7
    move-object v10, v1

    :goto_6
    move-object/from16 v17, v15

    :try_start_1
    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:I

    invoke-static {v15}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v15
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    packed-switch v15, :pswitch_data_0

    move/from16 v18, v3

    goto/16 :goto_b

    :pswitch_0
    const/4 v15, 0x1

    move/from16 v18, v3

    :try_start_2
    new-array v3, v15, [Ljava/lang/Class;

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x0

    aput-object v19, v3, v20

    invoke-virtual {v14, v10, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v15, v15, [Ljava/lang/Object;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v15, v20

    invoke-virtual {v3, v7, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :pswitch_1
    move/from16 v18, v3

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/Class;

    sget-object v19, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x0

    aput-object v19, v15, v20

    invoke-virtual {v14, v10, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    new-array v3, v3, [Ljava/lang/Object;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v20

    invoke-virtual {v15, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :pswitch_2
    move/from16 v18, v3

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/Class;

    sget-object v19, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x0

    aput-object v19, v15, v20

    invoke-virtual {v14, v10, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mBooleanValue:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v20

    invoke-virtual {v15, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :pswitch_3
    move/from16 v18, v3

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/Class;

    const-class v19, Ljava/lang/CharSequence;

    const/16 v20, 0x0

    aput-object v19, v15, v20

    invoke-virtual {v14, v10, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mStringValue:Ljava/lang/String;

    aput-object v0, v3, v20

    invoke-virtual {v15, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :pswitch_4
    move/from16 v18, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v15, Landroid/graphics/drawable/Drawable;

    const/16 v19, 0x0

    aput-object v15, v3, v19

    invoke-virtual {v14, v10, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-instance v15, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v15}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :pswitch_5
    move/from16 v18, v3

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/Class;

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x0

    aput-object v19, v15, v20

    invoke-virtual {v14, v10, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    new-array v3, v3, [Ljava/lang/Object;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mColorValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v20

    invoke-virtual {v15, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :pswitch_6
    move/from16 v18, v3

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/Class;

    sget-object v19, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x0

    aput-object v19, v15, v20

    invoke-virtual {v14, v10, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    new-array v3, v3, [Ljava/lang/Object;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mFloatValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v3, v20

    invoke-virtual {v15, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :pswitch_7
    move/from16 v18, v3

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/Class;

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x0

    aput-object v19, v15, v20

    invoke-virtual {v14, v10, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    new-array v3, v3, [Ljava/lang/Object;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mIntegerValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v20

    invoke-virtual {v15, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    move/from16 v18, v3

    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :catch_5
    move-exception v0

    move/from16 v18, v3

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_9
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    :catch_6
    move-exception v0

    move/from16 v18, v3

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must have a method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    move-object/from16 v1, p0

    move-object/from16 v10, v16

    move-object/from16 v15, v17

    move/from16 v3, v18

    goto/16 :goto_5

    :cond_8
    move/from16 v18, v3

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    if-nez v1, :cond_9

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    invoke-virtual {v7, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    invoke-virtual {v7, v1}, Landroid/view/View;->setRotation(F)V

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    invoke-virtual {v7, v1}, Landroid/view/View;->setRotationX(F)V

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    invoke-virtual {v7, v1}, Landroid/view/View;->setRotationY(F)V

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    invoke-virtual {v7, v1}, Landroid/view/View;->setScaleX(F)V

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    invoke-virtual {v7, v1}, Landroid/view/View;->setScaleY(F)V

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v8, v3

    int-to-float v3, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v3, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v9

    int-to-float v1, v1

    div-float/2addr v1, v8

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    if-lez v8, :cond_c

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    if-lez v8, :cond_c

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v1, v8

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v3, v8

    invoke-virtual {v7, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v7, v3}, Landroid/view/View;->setPivotY(F)V

    goto :goto_c

    :cond_a
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_b

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    invoke-virtual {v7, v1}, Landroid/view/View;->setPivotX(F)V

    :cond_b
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_c

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    invoke-virtual {v7, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_c
    :goto_c
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    invoke-virtual {v7, v1}, Landroid/view/View;->setTranslationX(F)V

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    invoke-virtual {v7, v1}, Landroid/view/View;->setTranslationY(F)V

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    invoke-virtual {v7, v1}, Landroid/view/View;->setTranslationZ(F)V

    iget-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    if-eqz v1, :cond_e

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    invoke-virtual {v7, v0}, Landroid/view/View;->setElevation(F)V

    goto :goto_d

    :cond_d
    move/from16 v18, v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WARNING NO CONSTRAINTS for view "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_d
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p0

    move/from16 v3, v18

    goto/16 :goto_0

    :cond_f
    move/from16 v18, v3

    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    if-nez v4, :cond_11

    goto :goto_e

    :cond_11
    iget-object v6, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v7, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_14

    new-instance v7, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/constraintlayout/widget/Barrier;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setId(I)V

    iget-object v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    if-eqz v8, :cond_12

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    goto :goto_f

    :cond_12
    iget-object v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    if-eqz v8, :cond_13

    invoke-static {v7, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->convertReferenceString(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I

    move-result-object v8

    iput-object v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    :cond_13
    :goto_f
    iget v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    iget v8, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    sget-object v8, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/SharedValues;

    new-instance v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v8}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>()V

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintHelper;->validateParams()V

    invoke-virtual {v4, v8}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    invoke-virtual {v2, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14
    iget-boolean v6, v6, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    if-eqz v6, :cond_10

    new-instance v6, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/view/View;->setId(I)V

    sget-object v3, Landroidx/constraintlayout/widget/ConstraintLayout;->sSharedValues:Landroidx/constraintlayout/widget/SharedValues;

    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>()V

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    invoke-virtual {v2, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e

    :cond_15
    move/from16 v1, v18

    :goto_10
    if-ge v0, v1, :cond_17

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v4, :cond_16

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/widget/ConstraintHelper;->applyLayoutFeaturesInConstraintSet(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_17
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final clear(II)V
    .locals 2

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    const/high16 v0, -0x80000000

    const/4 v1, -0x1

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    packed-switch p2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown constraint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    goto :goto_0

    :pswitch_1
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    goto :goto_0

    :pswitch_2
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    goto :goto_0

    :pswitch_3
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    goto :goto_0

    :pswitch_4
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    goto :goto_0

    :pswitch_5
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    goto :goto_0

    :pswitch_6
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    goto :goto_0

    :pswitch_7
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 17

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v3, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_a

    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v9

    iget-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mForceId:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq v9, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-direct {v10}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    invoke-virtual {v3, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    if-nez v10, :cond_3

    move/from16 v16, v2

    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_3
    iget-object v11, v1, Landroidx/constraintlayout/widget/ConstraintSet;->mSavedAttributes:Ljava/util/HashMap;

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/widget/ConstraintAttribute;

    :try_start_0
    const-string v4, "BackgroundColor"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-direct {v1, v15, v4}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V

    move/from16 v16, v2

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMap"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v16, v2

    const/4 v4, 0x0

    :try_start_1
    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v13, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v7, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-direct {v2, v15, v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;-><init>(Landroidx/constraintlayout/widget/ConstraintAttribute;Ljava/lang/Object;)V

    move-object v1, v2

    :goto_3
    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move/from16 v16, v2

    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    move-object/from16 v1, p0

    move/from16 v2, v16

    goto :goto_2

    :cond_5
    move/from16 v16, v2

    const/4 v4, 0x0

    iput-object v12, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    iput v9, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget-object v1, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    iget-object v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iput-object v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteX:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->editorAbsoluteY:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineMargin:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    iget-boolean v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    iget-boolean v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    iget-object v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    iput-object v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mConstraintTag:Ljava/lang/String;

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    iget v0, v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    invoke-virtual {v8}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    invoke-virtual {v8}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v2, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    invoke-virtual {v7}, Landroid/view/View;->getRotation()F

    move-result v0

    iget-object v2, v10, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->transform:Landroidx/constraintlayout/widget/ConstraintSet$Transform;

    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    invoke-virtual {v7}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    invoke-virtual {v7}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    invoke-virtual {v7}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    invoke-virtual {v7}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    invoke-virtual {v7}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getPivotY()F

    move-result v8

    float-to-double v9, v0

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_6

    float-to-double v9, v8

    cmpl-double v9, v9, v11

    if-eqz v9, :cond_7

    :cond_6
    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    iput v8, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    invoke-virtual {v7}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    invoke-virtual {v7}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    iget-boolean v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    if-eqz v0, :cond_8

    invoke-virtual {v7}, Landroid/view/View;->getElevation()F

    move-result v0

    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    :cond_8
    instance-of v0, v7, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v0, :cond_9

    check-cast v7, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Barrier;->getAllowsGoneWidget()Z

    move-result v0

    iput-boolean v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintHelper;->getReferencedIds()[I

    move-result-object v0

    iput-object v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    :cond_9
    :goto_6
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    move/from16 v2, v16

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final connect(IIIII)V
    .locals 8

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x2

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const-string v5, "right to "

    const-string v6, " undefined"

    const/4 v7, -0x1

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    packed-switch p2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " unknown"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-ne p4, v0, :cond_2

    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    goto :goto_0

    :cond_2
    if-ne p4, v1, :cond_3

    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    :goto_0
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    goto/16 :goto_7

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    if-ne p4, v1, :cond_4

    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    goto :goto_1

    :cond_4
    if-ne p4, v0, :cond_5

    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    :goto_1
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    goto/16 :goto_7

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    const/4 p1, 0x5

    if-ne p4, p1, :cond_6

    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    goto :goto_2

    :cond_6
    if-ne p4, v4, :cond_7

    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    goto :goto_2

    :cond_7
    if-ne p4, v3, :cond_8

    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    :goto_2
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    goto/16 :goto_7

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    if-ne p4, v3, :cond_9

    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    goto :goto_3

    :cond_9
    if-ne p4, v4, :cond_a

    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    :goto_3
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    goto/16 :goto_7

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    if-ne p4, v4, :cond_b

    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    goto :goto_4

    :cond_b
    if-ne p4, v3, :cond_c

    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    :goto_4
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    goto :goto_7

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    if-ne p4, v2, :cond_d

    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    goto :goto_5

    :cond_d
    if-ne p4, p1, :cond_e

    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    :goto_5
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    goto :goto_7

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    if-ne p4, v2, :cond_f

    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    goto :goto_6

    :cond_f
    if-ne p4, p1, :cond_10

    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    :goto_6
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    :goto_7
    return-void

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Left to "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Landroidx/constraintlayout/widget/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 2

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    return-object p0
.end method

.method public final load(Landroid/content/Context;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v2

    const-string v3, "Guideline"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mIsGuideline:Z

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    iget v1, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mViewId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public final setMargin(II)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->get(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object p0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    return-void
.end method
