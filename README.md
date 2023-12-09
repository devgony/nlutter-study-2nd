> # NomadfLUTTER study 2nd

## Review guide

1. fork this repository

2. Add foreked repository to flutter project

```sh
git remote add review https://github.com/{githubId}/nlutter-study-2nd
```

3. Create branch

```sh
git checkout -b day12-movieflix
```

4. rebase, reset 등을 활용하여 review를 받기 위한 최종 커밋의 시점으로 이동합니다.

```sh
git reset --hard {commitHash}
```

5. push to forked repository

```sh
git push review day12-movieflix
```

6. Create PR
