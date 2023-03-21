.class public abstract Lcom/apk/fp0;
.super Lcom/apk/hp0;
.source "CombiningEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/fp0$if;,
        Lcom/apk/fp0$do;
    }
.end annotation


# instance fields
.field public final do:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/apk/hp0;",
            ">;"
        }
    .end annotation
.end field

.field public if:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/apk/hp0;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/apk/fp0;->if:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apk/fp0;->do:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public if()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apk/fp0;->do:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/apk/fp0;->if:I

    return-void
.end method
