.class public synthetic Lcom/google/zxing/MultiFormatWriter$1;
.super Ljava/lang/Object;
.source "MultiFormatWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/MultiFormatWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$google$zxing$BarcodeFormat:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/google/zxing/BarcodeFormat;->values()[Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    const/4 v1, 0x1

    const/4 v2, 0x6

    :try_start_0
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v3, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    const/16 v4, 0xf

    aput v0, v3, v4
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    const/4 v4, 0x7

    :try_start_2
    sget-object v5, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    aput v3, v5, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v5, 0x4

    :try_start_3
    sget-object v6, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    const/16 v7, 0xe

    aput v5, v6, v7
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v6, 0x5

    const/16 v7, 0xb

    :try_start_4
    sget-object v8, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v9, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    aput v6, v8, v7
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v8, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v9, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    aput v2, v8, v0
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    aput v4, v0, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v0, 0x8

    :try_start_7
    sget-object v2, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    aput v0, v2, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v2, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    const/16 v3, 0x9

    aput v3, v2, v0
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    const/16 v2, 0xa

    aput v2, v0, v2
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    aput v7, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    const/16 v1, 0xc

    aput v1, v0, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    const/4 v1, 0x0

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method
