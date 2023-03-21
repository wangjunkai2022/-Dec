.class public Lcom/apk/bf;
.super Ljava/lang/Object;
.source "Commons.java"


# static fields
.field public static final do:Lcom/apk/gf;

.field public static final for:I

.field public static final if:Lcom/apk/hf;

.field public static final new:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/apk/gf;->do:Lcom/apk/gf;

    sput-object v0, Lcom/apk/bf;->do:Lcom/apk/gf;

    .line 2
    sget-object v0, Lcom/apk/hf;->for:Lcom/apk/hf;

    sput-object v0, Lcom/apk/bf;->if:Lcom/apk/hf;

    const/high16 v0, 0x438c0000    # 280.0f

    .line 3
    invoke-static {v0}, Lcom/apk/eg;->catch(F)I

    move-result v0

    sput v0, Lcom/apk/bf;->for:I

    const/high16 v0, 0x42c80000    # 100.0f

    .line 4
    invoke-static {v0}, Lcom/apk/eg;->catch(F)I

    move-result v0

    sput v0, Lcom/apk/bf;->new:I

    return-void
.end method
