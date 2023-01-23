CREATE TABLE posts (
    Id INT NOT NULL,
    PostTypeId INT DEFAULT NULL,
    AcceptedAnswerId INT DEFAULT NULL,
    CreationDate TIMESTAMP DEFAULT NULL,
    Score INT DEFAULT NULL,
    ViewCount INT DEFAULT NULL,
    Body TEXT DEFAULT NULL,
    OwnerUserId INT DEFAULT NULL,
    LasActivityDate TIMESTAMP DEFAULT NULL,
    Title VARCHAR(255) DEFAULT NULL,
    Tags VARCHAR(255) DEFAULT NULL,
    AnswerCount INT DEFAULT NULL,
    CommentCount INT DEFAULT NULL,
    FavoriteCount INT DEFAULT NULL,
    LastEditorUserId INT DEFAULT NULL,
    LastEditDate TIMESTAMP DEFAULT NULL,
    CommunityOwnedDate TIMESTAMP DEFAULT NULL,
    ParentId INT DEFAULT NULL,
    ClosedDate TIMESTAMP DEFAULT NULL,
    OwnerDisplayName VARCHAR(255) DEFAULT NULL,
    LastEditorDisplayName VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (Id),
    CONSTRAINT posts_LastEditorUserId_fkey FOREIGN KEY (LastEditorUserId)
        REFERENCES users (Id),
    CONSTRAINT posts_OwnerUserId_fkey FOREIGN KEY (OwnerUserId)
        REFERENCES users (Id),
    CONSTRAINT posts_ParentId_fkey FOREIGN KEY (ParentId)
        REFERENCES posts (Id)
);
