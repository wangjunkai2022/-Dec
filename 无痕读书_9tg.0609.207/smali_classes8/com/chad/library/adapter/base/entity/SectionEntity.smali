.class public abstract Lcom/chad/library/adapter/base/entity/SectionEntity;
.super Ljava/lang/Object;
.source "SectionEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public header:Ljava/lang/String;

.field public isHeader:Z

.field public t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/chad/library/adapter/base/entity/SectionEntity;->isHeader:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/chad/library/adapter/base/entity/SectionEntity;->header:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/chad/library/adapter/base/entity/SectionEntity;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/entity/SectionEntity;->isHeader:Z

    .line 3
    iput-object p2, p0, Lcom/chad/library/adapter/base/entity/SectionEntity;->header:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/chad/library/adapter/base/entity/SectionEntity;->t:Ljava/lang/Object;

    return-void
.end method
