.class public synthetic Lcom/baidu/tts/m/j$1;
.super Ljava/lang/Object;
.source "TtsParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/tts/m/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    invoke-static {}, Lcom/baidu/tts/f/g;->values()[Lcom/baidu/tts/f/g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/baidu/tts/m/j$1;->a:[I

    const/16 v1, 0x1d

    :try_start_0
    sget-object v2, Lcom/baidu/tts/f/g;->D:Lcom/baidu/tts/f/g;

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 v0, 0x1e

    :try_start_1
    sget-object v2, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v3, Lcom/baidu/tts/f/g;->E:Lcom/baidu/tts/f/g;

    const/4 v3, 0x2

    aput v3, v2, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/16 v2, 0x1f

    :try_start_2
    sget-object v3, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v4, Lcom/baidu/tts/f/g;->F:Lcom/baidu/tts/f/g;

    const/4 v4, 0x3

    aput v4, v3, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v5, Lcom/baidu/tts/f/g;->P:Lcom/baidu/tts/f/g;

    const/16 v5, 0x29

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v5, Lcom/baidu/tts/f/g;->Q:Lcom/baidu/tts/f/g;

    const/16 v5, 0x2a

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v5, Lcom/baidu/tts/f/g;->R:Lcom/baidu/tts/f/g;

    const/16 v5, 0x2b

    const/4 v6, 0x6

    aput v6, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/16 v4, 0x1a

    :try_start_6
    sget-object v5, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v6, Lcom/baidu/tts/f/g;->A:Lcom/baidu/tts/f/g;

    const/4 v6, 0x7

    aput v6, v5, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v5, 0x21

    :try_start_7
    sget-object v6, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v7, Lcom/baidu/tts/f/g;->H:Lcom/baidu/tts/f/g;

    const/16 v7, 0x8

    aput v7, v6, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v6, 0x18

    :try_start_8
    sget-object v7, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v8, Lcom/baidu/tts/f/g;->y:Lcom/baidu/tts/f/g;

    const/16 v8, 0x9

    aput v8, v7, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v7, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v8, Lcom/baidu/tts/f/g;->O:Lcom/baidu/tts/f/g;

    const/16 v8, 0x28

    const/16 v9, 0xa

    aput v9, v7, v8
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v7, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v8, Lcom/baidu/tts/f/g;->al:Lcom/baidu/tts/f/g;

    const/16 v8, 0x3f

    const/16 v9, 0xb

    aput v9, v7, v8
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/16 v7, 0x23

    :try_start_b
    sget-object v8, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v9, Lcom/baidu/tts/f/g;->J:Lcom/baidu/tts/f/g;

    const/16 v9, 0xc

    aput v9, v8, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/16 v8, 0x24

    :try_start_c
    sget-object v9, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v10, Lcom/baidu/tts/f/g;->K:Lcom/baidu/tts/f/g;

    const/16 v10, 0xd

    aput v10, v9, v8
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v9, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v10, Lcom/baidu/tts/f/g;->N:Lcom/baidu/tts/f/g;

    const/16 v10, 0x27

    const/16 v11, 0xe

    aput v11, v9, v10
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v9, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v10, Lcom/baidu/tts/f/g;->S:Lcom/baidu/tts/f/g;

    const/16 v10, 0x2c

    const/16 v11, 0xf

    aput v11, v9, v10
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    const/16 v9, 0x20

    :try_start_f
    sget-object v10, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v11, Lcom/baidu/tts/f/g;->G:Lcom/baidu/tts/f/g;

    const/16 v11, 0x10

    aput v11, v10, v9
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v10, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v11, Lcom/baidu/tts/f/g;->T:Lcom/baidu/tts/f/g;

    const/16 v11, 0x2d

    const/16 v12, 0x11

    aput v12, v10, v11
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v10, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v11, Lcom/baidu/tts/f/g;->af:Lcom/baidu/tts/f/g;

    const/16 v11, 0x39

    const/16 v12, 0x12

    aput v12, v10, v11
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    const/16 v10, 0x25

    :try_start_12
    sget-object v11, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v12, Lcom/baidu/tts/f/g;->L:Lcom/baidu/tts/f/g;

    const/16 v12, 0x13

    aput v12, v11, v10
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v11, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v12, Lcom/baidu/tts/f/g;->M:Lcom/baidu/tts/f/g;

    const/16 v12, 0x26

    const/16 v13, 0x14

    aput v13, v11, v12
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v11, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v12, Lcom/baidu/tts/f/g;->ae:Lcom/baidu/tts/f/g;

    const/16 v12, 0x38

    const/16 v13, 0x15

    aput v13, v11, v12
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v11, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v12, Lcom/baidu/tts/f/g;->U:Lcom/baidu/tts/f/g;

    const/16 v12, 0x2e

    const/16 v13, 0x16

    aput v13, v11, v12
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    const/16 v11, 0x17

    :try_start_16
    sget-object v12, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v13, Lcom/baidu/tts/f/g;->ah:Lcom/baidu/tts/f/g;

    const/16 v13, 0x3b

    aput v11, v12, v13
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v12, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v13, Lcom/baidu/tts/f/g;->ai:Lcom/baidu/tts/f/g;

    const/16 v13, 0x3c

    aput v6, v12, v13
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    const/16 v6, 0x22

    :try_start_18
    sget-object v12, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v13, Lcom/baidu/tts/f/g;->I:Lcom/baidu/tts/f/g;

    const/16 v13, 0x19

    aput v13, v12, v6
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v12, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v13, Lcom/baidu/tts/f/g;->x:Lcom/baidu/tts/f/g;

    aput v4, v12, v11
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v4, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v11, Lcom/baidu/tts/f/g;->V:Lcom/baidu/tts/f/g;

    const/16 v11, 0x2f

    const/16 v12, 0x1b

    aput v12, v4, v11
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v4, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v11, Lcom/baidu/tts/f/g;->ak:Lcom/baidu/tts/f/g;

    const/16 v11, 0x3e

    const/16 v12, 0x1c

    aput v12, v4, v11
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v4, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v11, Lcom/baidu/tts/f/g;->am:Lcom/baidu/tts/f/g;

    const/16 v11, 0x40

    aput v1, v4, v11
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v1, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v4, Lcom/baidu/tts/f/g;->an:Lcom/baidu/tts/f/g;

    const/16 v4, 0x41

    aput v0, v1, v4
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v1, Lcom/baidu/tts/f/g;->ao:Lcom/baidu/tts/f/g;

    const/16 v1, 0x42

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v1, Lcom/baidu/tts/f/g;->ap:Lcom/baidu/tts/f/g;

    const/16 v1, 0x43

    aput v9, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v1, Lcom/baidu/tts/f/g;->e:Lcom/baidu/tts/f/g;

    aput v5, v0, v3
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v0, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v1, Lcom/baidu/tts/f/g;->aw:Lcom/baidu/tts/f/g;

    const/16 v1, 0x4a

    aput v6, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v1, Lcom/baidu/tts/f/g;->av:Lcom/baidu/tts/f/g;

    const/16 v1, 0x49

    aput v7, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v0, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v1, Lcom/baidu/tts/f/g;->az:Lcom/baidu/tts/f/g;

    const/16 v1, 0x4d

    aput v8, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v0, Lcom/baidu/tts/m/j$1;->a:[I

    sget-object v1, Lcom/baidu/tts/f/g;->aA:Lcom/baidu/tts/f/g;

    const/16 v1, 0x4e

    aput v10, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    return-void
.end method
