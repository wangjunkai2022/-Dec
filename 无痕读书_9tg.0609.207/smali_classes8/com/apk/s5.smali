.class public Lcom/apk/s5;
.super Ljava/lang/Object;
.source "IComicShelfCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract case(Ljava/lang/String;)V
.end method

.method public abstract do()V
.end method

.method public abstract for(ZI)V
.end method

.method public abstract if(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/manhua/data/bean/ComicCollectBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract new(Ljava/lang/String;)V
.end method

.method public abstract try(Ljava/lang/String;)V
.end method
