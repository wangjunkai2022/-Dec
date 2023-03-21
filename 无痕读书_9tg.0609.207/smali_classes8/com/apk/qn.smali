.class public final Lcom/apk/qn;
.super Ljava/lang/Object;
.source "UnitTransformation.java"

# interfaces
.implements Lcom/apk/qj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apk/qj<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final if:Lcom/apk/qj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/qj<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/qn;

    invoke-direct {v0}, Lcom/apk/qn;-><init>()V

    sput-object v0, Lcom/apk/qn;->if:Lcom/apk/qj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public if(Landroid/content/Context;Lcom/apk/gl;II)Lcom/apk/gl;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/apk/gl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/apk/gl<",
            "TT;>;II)",
            "Lcom/apk/gl<",
            "TT;>;"
        }
    .end annotation

    return-object p2
.end method
